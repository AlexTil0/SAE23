<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Gestion de la base article</title>
</head>
<body>
<h1>Articles Disponibles</h1>
<br />
<table border="1">
<tr>
<th>Code Article</th>
<th>Désignation</th>
<th>Prix unitaire</th>
<th>&nbsp;</th>
</tr>

<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "mydb";

// Création de la connexion
$conn = new mysqli($servername, $username, $password, $dbname);

// Vérification de la connexion
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Création de la requête SQL pour sélectionner les articles
$requete = "SELECT id_article, designation, prix FROM article"; // ✅ Requête correcte

$result = $conn->query($requete);
$nbart = $result->num_rows;

while($tab = $result->fetch_assoc()) {
    echo "<tr>";
    echo "<td>" . $tab['id_article'] . "</td>";        // Code Article
    echo "<td>" . $tab['designation'] . "</td>";       // Désignation
    echo "<td align=\"right\">" . $tab['prix'] . " &euro;</td>";  // Prix unitaire

    // ⚠️ ERREUR ORIGINALE : retour à la ligne dans 'designation'
    // $modif="modifier.php?id_article=".$tab['id_article']."&designation=".$tab['design
    // ation'];

    // Correction : mettre sur une seule ligne
    $modif = "modifier.php?id_article=" . $tab['id_article'] . "&designation=" . $tab['designation'];
    $supp  = "supprimer.php?id_article=" . $tab['id_article'];

    // Liens pour Modifier / Supprimer
    echo "<td> <a href=\"$modif\">Modifier</a> &nbsp;&nbsp; <a href=\"$supp\">Supprimer</a> </td>";
    echo "</tr>";
}

echo "</table>";
$conn->close();
?>

<h2><a href="ajouter.php">Ajouter un Article</a></h2>
</body>
</html>