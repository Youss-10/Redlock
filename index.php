<?php 
	$connect = mysqli_connect('172.18.0.2', 'root', 'toor', 'Redlock');

	if (!$connect) {
		echo "Failed to connect!";
		die();
	}

	$query = mysqli_query($connect, "SELECT * FROM users");

	while ($data = mysqli_fetch_array($query)) {
		echo "User ID : ".$data['ID']."<br>";
		echo " Nama : ".$data['Nama']."<br>";
		echo " Alamat : ".$data['Alamat']."<br>";
		echo " Jabatan : ".$data['Jabatan']."<br>";
		echo "<br>";
	}
?>
