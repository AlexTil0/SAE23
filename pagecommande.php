<!DOCTYPE html >
<html >
<head>
<title>Géstion de panier</title>
</head>
<body>
<form action="<?php $_SERVER['PHP_SELF'] ?>" method="post" >
<fieldset>
<legend><b>Saisies d’articles</b></legend>
<table>
<tbody>
<tr>
<th>code : </th>
<td><input type="text" name="code"></td>
</tr>
<tr>
<th>prix :</th>
<td><input type="text" name="prix"></td>
</tr>
<tr>
<th>article : </th>
<td><input type="text" name="article"></td>
</tr>
<tr>
<td colspan="3">
<input type="submit" value="Ajouter">
<input type="submit" value="Voir mon panier">
<input type="reset" value="Supprimer">
</td>
</tr>
</tbody>
</table>
</fieldset>
</form>
</body>
</html>


