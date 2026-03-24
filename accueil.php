<?php
// Connexion à la base de données
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "mydb";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connexion échouée : " . $conn->connect_error);
}

// Récupération des données du formulaire
$motcle = isset($_POST['motcle']) ? $_POST['motcle'] : "";
$categorie = isset($_POST['categorie']) ? $_POST['categorie'] : "Tous";

// Requête SQL
$sql = "SELECT * FROM article WHERE 1";

if (!empty($motcle)) {
    $sql .= " AND designation LIKE '%$motcle%'";
}

if ($categorie != "Tous") {
    $sql .= " AND categorie = '$categorie'";
}

$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Accueil - Gaming Shop</title>
</head>

<body>

<h1>🎮 Boutique Gaming</h1>

<!-- 🔎 FORMULAIRE -->
<form method="post" action="accueil.php">
    
    🔍 Recherche : 
    <input type="text" name="motcle" placeholder="Nom du jeu ou console">

    🎮 Plateforme :
    <select name="categorie">
        <option value="Tous">Tous</option>
        <option value="PS4">PS4</option>
        <option value="PS5">PS5</option>
        <option value="PC">PC</option>
        <option value="Mobile">Mobile</option>
        <option value="Nintendo Switch">Nintendo Switch</option>
    </select>

    <input type="submit" value="Rechercher">
</form>

<hr>

<!-- 📦 AFFICHAGE -->
<h2>Produits disponibles</h2>

<table border="1">
<tr>
    <th>ID</th>
    <th>Produit</th>
    <th>Prix (€)</th>
    <th>Plateforme</th>
    <th>Quantité</th>
    <th>Action</th>
</tr>

<?php
if ($result && $result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {

        echo "<tr>";
        echo "<td>".$row['id_article']."</td>";
        echo "<td>".$row['designation']."</td>";
        echo "<td>".$row['prix']."</td>";
        echo "<td>".$row['categorie']."</td>";

        echo "<td>
                <form method='post' action='panier.php'>
                    <input type='hidden' name='id_article' value='".$row['id_article']."'>
                    <input type='hidden' name='designation' value='".$row['designation']."'>
                    <input type='hidden' name='prix' value='".$row['prix']."'>
                    <input type='number' name='quantite' value='1' min='1'>
              </td>";

        echo "<td>
                    <input type='submit' value='Ajouter'>
                </form>
              </td>";

        echo "</tr>";
    }
} else {
    echo "<tr><td colspan='6'>Aucun produit trouvé</td></tr>";
}
?>

</table>

</body>
</html>

<?php
$conn->close();
?>