<?php
$dsn = 'mysql:dbname=loca;host=localhost';
$user = 'Loca';
$password = 'CRo3WvtnY7vnOB1r';

try {
    $bdd = new PDO($dsn, $user, $password);
   echo'connexion ok!';
} catch (PDOException $e) {
   echo'ERREUR: '.$e->getMessage();
}

?>