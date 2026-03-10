<?php
session_start();

$fond = $_SESSION['fond'];
$texte = $_SESSION['texte'];
?>

<!DOCTYPE html>
<html>
<head>
<title>Couleurs du site avec des sessions</title>

<style type="text/css">
body {
    background-color: <?php echo $fond; ?>;
    color: <?php echo $texte; ?>;
}
</style>

</head>

<body>

<p>
Contenu de la page B avec les couleurs choisies <br />
<a href="Test_session.php">Retour vers la page principale</a>
</p>

</body>
</html>