<?php
	$conn = new mysqli('localhost', 'ali', 'root', 'libsystem');

	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	}
	
?>
