<?php
// -------------------------------
// TP3 : Formulaires, Sessions et Tableaux
// Création d'une base MySQL et d'une table 'article'
// -------------------------------

// Étape 1 : Connexion au serveur MySQL
$serveur = "localhost";
$utilisateur = "root";
$motdepasse = "";

// Création de la connexion
$conn = mysqli_connect($serveur, $utilisateur, $motdepasse);

// Vérification de la connexion
if (!$conn) {
    die("Connexion échouée : " . mysqli_connect_error());
} else {
    echo "Connexion réussie au serveur MySQL !<br>";
}

// Étape 2 : Création de la base de données 'mydb'
$sql_create_db = "CREATE DATABASE IF NOT EXISTS mydb";
if (mysqli_query($conn, $sql_create_db)) {
    echo "Base de données 'mydb' créée ou déjà existante !<br>";
} else {
    echo "Erreur lors de la création de la base : " . mysqli_error($conn) . "<br>";
}

// Étape 3 : Sélection de la base de données
mysqli_select_db($conn, "mydb");

// Étape 4 : Création de la table 'article'
$sql_create_table = "
CREATE TABLE IF NOT EXISTS article (
    id_article CHAR(10) NOT NULL PRIMARY KEY,
    designation VARCHAR(100) NOT NULL,
    prix DECIMAL(8,2) NOT NULL,
    categorie ENUM('Tous','Vidéo','Photo','Téléphonie','Informatique','Divers') NOT NULL DEFAULT 'Tous'
)";
if (mysqli_query($conn, $sql_create_table)) {
    echo "Table 'article' créée ou déjà existante !<br>";
} else {
    echo "Erreur lors de la création de la table : " . mysqli_error($conn) . "<br>";
}

// Étape 5 : Fermeture de la connexion
mysqli_close($conn);
echo "Connexion fermée.";
?>