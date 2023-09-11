<?php
require_once('./inc/db_connection.php');


function advertList()
{
    $listadverts =[];
    // se connecter a la db 
    $db = dbConnexion();
    // preparer la requete
    $request = $db->prepare("SELECT * FROM advert");
    // executer la requete
    try {
        $request->execute();
        // recuperer le resultat dans un tableau
        return $listadverts = $request->fetchAll(PDO::FETCH_ASSOC);
    } catch (PDOException $e) {
        echo $e->getMessage();
    }
    return $listadverts;
}

// Afficher les 15 dernières annonces dans l'ordre antéchronologique
function consuladvert()
{
    // se connecter a la db 
    $db = dbConnexion();
    // preparer la requete
    $request = $db->prepare("SELECT * FROM advert ORDER BY id DESC LIMIT 15");
    // executer la requete
    try {
        $request->execute();
        // recuperer le resultat dans un tableau
        return $advertconsul = $request->fetchAll(PDO::FETCH_ASSOC);
    } catch (PDOException $e) {
     $e->getMessage();
    }
    return $advertconsul;
}
