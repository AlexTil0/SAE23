<?php

// Étape 1 : Connexion au serveur MySQL
$serveur = "localhost";
$utilisateur = "root";
$motdepasse = "";

$conn = mysqli_connect($serveur, $utilisateur, $motdepasse);

if($_POST['envoi']=="Enregistrer"
&&$_POST["id_article"]&&$_POST["designation"]&&$_POST["prix"]&&$_POST
["categorie"])
{
$id_article= $_POST["id_article"];
$designation= $_POST["designation"];
$prix= $_POST["prix"];
$categorie=$_POST["categorie"];

$requete = "INSERT INTO article (id_article, designation, prix, categorie)
			VALUES ('$id_article', '$designation', '$prix', '$categorie')";

$conn->query($requete);
header('Location: page_accueil_vend.php');
}
else if($_POST['envoi']!=="Page d'accueil"){
echo "<script type=\"text/javascript\">alert('<?php Erreur de saisie ?>');
</script>";
echo "<script type=\"text/javascript\"> window.location='ajouter.html'
</script>";
}
else
{
echo "<script type=\"text/javascript\">
window.location='page_accueil_vend.php' </script>";
}
$conn->close();
?>