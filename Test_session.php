<?php
session_start();

if(isset($_POST['fond']) && isset($_POST['texte']))
{
    $_SESSION['fond'] = $_POST['fond'];
    $_SESSION['texte'] = $_POST['texte'];
}
?>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Couleurs du site avec des sessions</title>
</head>

<body>

<div>

<form method="post" action="Test_session.php">

<table>

<tr>
<td align="right">Couleur de fond</td>
<td><input type="text" name="fond"/></td>
</tr>

<tr>
<td align="right">Couleur de texte</td>
<td><input type="text" name="texte"/></td>
</tr>

<tr>
<td align="center" colspan="2">
<input type="submit" value="Envoyer"/>
<input type="reset" value="Effacer"/>
</td>
</tr>

</table>

</form>

<p>
Contenu de la page principale <br />
<a href="Test_couleurs.php">Lien vers la page Test_couleurs qui aura ces couleurs</a>
</p>

</div>

</body>
</html>
