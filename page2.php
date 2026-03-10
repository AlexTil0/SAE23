<!DOCTYPE html>
<html>
	<body>
		<?php
		session_start();
		echo "<br /> Bonjour ",$_SESSION['nom'];
		?>