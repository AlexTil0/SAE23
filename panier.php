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

// Initialisation du panier
if (!isset($_SESSION['panier'])) {
    $_SESSION['panier'] = array();
}

// 🔹 AJOUT AU PANIER
if (isset($_POST['id_article']) && isset($_POST['quantite'])) {

    $id = $_POST['id_article'];
    $quantite = $_POST['quantite'];

    // Si déjà dans le panier
    if (isset($_SESSION['panier'][$id])) {
        $_SESSION['panier'][$id] += $quantite;
    } else {
        $_SESSION['panier'][$id] = $quantite;
    }
}

// 🔹 VIDER PANIER
if (isset($_POST['vider'])) {
    $_SESSION['panier'] = array();
}
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Panier</title>
</head>

<body>

<h1>🛒 Mon panier</h1>

<?php
if (!empty($_SESSION['panier'])) {

    echo "<table border='1'>";
    echo "<tr>
            <th>ID</th>
            <th>Produit</th>
            <th>Prix (€)</th>
            <th>Quantité</th>
            <th>Total</th>
          </tr>";

    $total_general = 0;

    // 🔹 Parcours du panier
    foreach ($_SESSION['panier'] as $id => $quantite) {

        // Récupérer l'article depuis la BDD
        $sql = "SELECT * FROM article WHERE id_article = '$id'";
        $result = $conn->query($sql);

        if ($result && $row = $result->fetch_assoc()) {

            $designation = $row['designation'];
            $prix = $row['prix'];

            $total = $prix * $quantite;
            $total_general += $total;

            echo "<tr>";
            echo "<td>$id</td>";
            echo "<td>$designation</td>";
            echo "<td>$prix</td>";
            echo "<td>$quantite</td>";
            echo "<td>".number_format($total, 2)." €</td>";
            echo "</tr>";
        }
    }

    echo "<tr>
            <td colspan='4'><b>Total général</b></td>
            <td><b>".number_format($total_general, 2)." €</b></td>
          </tr>";

    echo "</table>";

} else {
    echo "<p>Votre panier est vide 🥲</p>";
}
?>

<br>

<!-- 🔹 BOUTONS -->
<form method="post">
    <input type="submit" name="vider" value="Vider le panier">
</form>

<br>

<a href="accueil.php">
    <button>⬅️ Continuer les achats</button>
</a>

<br><br>

<a href="saisieclient.php">
    <button>✅ Commander</button>
</a>

</body>
</html>

<?php
$conn->close();
?>