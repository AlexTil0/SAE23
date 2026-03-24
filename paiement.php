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

// Vérifier client connecté
if (!isset($_SESSION['id_client'])) {
    echo "Erreur : aucun client connecté";
    exit();
}

// Vérifier panier
if (empty($_SESSION['panier'])) {
    echo "Panier vide ❌";
    exit();
}

// 🔹 VALIDATION PAIEMENT
if (isset($_POST['payer'])) {

    $id_client = $_SESSION['id_client'];
    $date = date("Y-m-d");

    // Insérer commande
    $sql = "INSERT INTO commande (id_client, date)
            VALUES ('$id_client', '$date')";

    if ($conn->query($sql) === TRUE) {

        echo "<h2>✅ Commande validée !</h2>";
        echo "<p>Merci ".$_SESSION['prenom']." pour votre achat 🎉</p>";

        // Vider panier
        $_SESSION['panier'] = array();

    } else {
        echo "Erreur : " . $conn->error;
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Paiement</title>
</head>

<body>

<h1>💳 Paiement</h1>

<h3>Client : <?php echo $_SESSION['prenom']." ".$_SESSION['nom']; ?></h3>

<?php
// Affichage du panier
$total_general = 0;

echo "<table border='1'>";
echo "<tr><th>Produit</th><th>Quantité</th><th>Total</th></tr>";

foreach ($_SESSION['panier'] as $id => $quantite) {

    $sql = "SELECT * FROM article WHERE id_article='$id'";
    $result = $conn->query($sql);

    if ($row = $result->fetch_assoc()) {

        $designation = $row['designation'];
        $prix = $row['prix'];

        $total = $prix * $quantite;
        $total_general += $total;

        echo "<tr>";
        echo "<td>$designation</td>";
        echo "<td>$quantite</td>";
        echo "<td>".number_format($total, 2)." €</td>";
        echo "</tr>";
    }
}

echo "<tr><td colspan='2'><b>Total</b></td><td><b>".number_format($total_general,2)." €</b></td></tr>";
echo "</table>";
?>

<br>

<!-- 🔹 FORMULAIRE PAIEMENT -->
<form method="post">

    Numéro de carte bancaire : <br>
    <input type="text" name="carte" maxlength="16" required><br><br>

    <input type="submit" name="payer" value="Payer">

</form>

<br>

<a href="panier.php">
    <button>⬅️ Retour panier</button>
</a>

</body>
</html>

<?php
$conn->close();
?>