<?php

function dbConnexion()
{
    $connexion = null;
    $host = 'localhost';
    $dbName = "wf3_php_intermediaire_oliver";
    $identify = "id21246219_oliver55";
    $password = "Necas11bola@";

    try {
        $connexion = new PDO("mysql:host=$host; dbname=$dbName", $identify, $password);
    } catch (PDOException $e) {
        $connexion = $e->getMessage();
    }
    return $connexion;
}
?>
