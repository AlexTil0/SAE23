<!DOCTYPE html>
<html>
	<body>
		<?php
		session_start();
		$nom="Jean";
		$_SESSION['nom']=$nom;
		echo "<a href=\"page2.php\">Vers la page 2</a>";
		?>