<?php 
include 'config/bdd.php';
include 'config/config.php';
session_start();
//var_dump($_POST);
if (isset($_POST['btn-login'])) {
    //var_dump($_POST);
    $mail= htmlentities($_POST['mail']);
    $mdp= htmlentities($_POST['mdp']);
    //var_dump($mail);
    //var_dump($mdp);
    //var_dump(password_hash('azerty',PASSWORD_DEFAULT));
$sql= "SELECT * FROM utilisateur WHERE mail='$mail' ";
//var_dump($sql);


$requete=$bdd->prepare($sql);
$requete->execute();
$user = $requete->fetchAll(PDO::FETCH_ASSOC);
var_dump(password_verify($mdp, $user[0]['mot_de_passe']));
//var_dump($user);

if (count($user)  >0) {
    if (!password_verify($mdp, $user[0]['mot_de_passe'])) {
        header('Location: login.php');
        
die;
    } 
    $_SESSION['connect'] = true;
    unset($user[0]['mot_de_passe']);
    $_SESSION['user'] = $user[0];
    header('Location: index.php');
    die;
}
header('Location: login.php');
die;
}

if (isset($_POST['btn-logout'])) {
    $_SESSION = array();
    header('Location: http://localhost/locabox/admin/login');
        
}
if (isset($_POST['btn-profil'])) {
    
    header('Location: http://localhost/locabox/admin/user/index.php');
        
}
 
    
?>