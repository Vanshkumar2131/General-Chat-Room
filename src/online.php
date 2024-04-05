<?php 

/*
  CS3715 FINAL PROJECT
  MEMBERS: KELWIN JOANES, OLUWATOMISIN JENROLA, SAAHIL BUDHRANI
  DATE SUBMITTED: 29/03/16
  WEB APP NAME: CHATTY
 */

	// variables for sql connection 
	$servername = "localhost";
		$username = "root";
		$password = "";
		$database = "chatty";

	// establish sql connection
	$conn = new mysqli($servername, $username, $password, $database);

	// select all online users
	$sql = "select username from Info where online = 1;";

	// run and save the query
	$result = $conn->query($sql);
	
	// if at least 1 user is online then return the username
	if($result->num_rows > 0)
	{
		echo "<div class=\"title\">Online:</div>";
		// output data of each row
	    while($row = $result->fetch_assoc()) 
	    {
	        echo "<span class=\"onlineUser\">" . $row["username"] . "</span>";
	        echo "<br />";
	    }
	}

	// close sql connection
	$conn->close();
?>