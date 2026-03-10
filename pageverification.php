<?php
error_reporting(0);
if($_POST['login']=="login" && $_POST['pass']=="motdepasse")
{
echo "<script type=\"text/javascript\"> window.location='pagecommande.php'; </script>";
} 
else
{
echo "<script>alert('Mot de passe incorrect');</script>";
echo "<script>window.location='pageaccueil.html';</script>";
}
?>