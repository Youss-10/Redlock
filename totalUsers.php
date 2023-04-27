<?php 
	$connect = mysqli_connect('172.18.0.2', 'root', 'toor', 'Redlock');

	if (!$connect) {
		echo "Failed to connect!";
		die();
	}

	$query = mysqli_query($connect, "SELECT * FROM users");
	$user = 0;

	while ($data = mysqli_fetch_array($query)) {
		$user++;
	}
	
	echo "Total User : ".$user;
?>