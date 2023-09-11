<?php
require_once('db_connection.php');

// Incluez le code de connexion à la base de données ici

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Récupérez les données soumises par le formulaire
    $title = $_POST["title"];
    $description = $_POST["description"];
    $postal_code = $_POST["postal_code"];
    $city = $_POST["city"];
    $type = $_POST["type"];
    $price = $_POST["price"];
}
// Requête SQL pour insérer les données dans la table "advert"
$db = dbConnexion();
$dbrequest = $db->prepare("INSERT INTO advert (title, description, postal_code, city, type, price) VALUES (?, ?, ?, ?, ?, ?)");

try {
    $dbrequest->execute(array($title, $description, $postal_code, $city, $type, $price));
    header("Location: ../accueil.php");
    //code...
} catch (PDOException $e) {
    //throw $th;
    echo $e->getMessage();
}
// Fermez la connexion à la base de données ici
?>
