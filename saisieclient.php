<?php
session_start();

// Connexion BDD
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "mydb";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connexion échouée : " . $conn->connect_error);
}

// 🔹 ENREGISTREMENT CLIENT
if (isset($_POST['valider'])) {

    $nom = $_POST['nom'];
    $prenom = $_POST['prenom'];
    $age = $_POST['age'];
    $adresse = $_POST['adresse'];
    $ville = $_POST['ville'];
    $mail = $_POST['mail'];
    $code = $_POST['code'];

    // Requête insertion
    $sql = "INSERT INTO client (nom, prenom, age, adresse, ville, mail, code)
            VALUES ('$nom', '$prenom', '$age', '$adresse', '$ville', '$mail', '$code')";

    if ($conn->query($sql) === TRUE) {

        // Récupérer id_client
        $_SESSION['id_client'] = $conn->insert_id;

        // Sauvegarder infos en session
        $_SESSION['nom'] = $nom;
        $_SESSION['prenom'] = $prenom;

        // Redirection vers paiement
        header("Location: paiement.php");
        exit();

    } else {
        echo "Erreur : " . $conn->error;
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Saisie Client</title>
</head>

<body>

<h1>🧾 Informations client</h1>

<form method="post" action="saisieclient.php">

    Nom : <br>
    <input type="text" name="nom" required><br><br>

    Prénom : <br>
    <input type="text" name="prenom" required><br><br>

    Âge : <br>
    <input type="number" name="age" required><br><br>

    Adresse : <br>
    <input type="text" name="adresse" required><br><br>

    Ville : <br>
    <input type="text" name="ville" required><br><br>

    Email : <br>
    <input type="email" name="mail" required><br><br>

    Mot de passe : <br>
    <input type="password" name="code" required><br><br>

    <input type="submit" name="valider" value="Valider">

</form>

<br>

<a href="panier.php">
    <button>⬅️ Retour au panier</button>
</a>

</body>
</html>

<?php
$conn->close();
?>