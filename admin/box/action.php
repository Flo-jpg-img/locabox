<?php
session_start();
include '../config/bdd.php';
include '../config/config.php';

$sql="SELECT * FROM box ORDER BY id";
$requette= $bdd->prepare($sql);
$requette->execute();
$box=$requette->fetchAll(PDO::FETCH_ASSOC);



if(isset($_POST['btn-add'])){
$libelle=htmlentities($_POST['libelle']);
$surface=htmlentities($_POST['surface']);
$volume=htmlentities($_POST['volume']);
$prix=htmlentities($_POST['prix']);
$disponibilite=htmlentities($_POST['disponibilite']);
$statut=htmlentities($_POST['statut']);



$Ajout="INSERT INTO box( libelle, surface, volume,prix,disponibilite,statut) VALUES ( '$libelle', '$surface', '$volume' , '$prix' , '$disponibilite' , '$statut')";
$requette_ajout= $bdd->prepare($Ajout);
if (!$requette_ajout->execute()) {
    die('error');
}

header('Location: http://localhost/locabox/admin/');
die;
}



if (isset($_POST['btn-modif-box-action'])) {

    if (isset($_POST['id'])) {
        $id=intval($_POST['id']);
        if ($id<=0) {
            
        }
    }
    //var_dump($_POST);
    
    $libelle=$_POST['libelle'];
    $surface=$_POST['surface'];
    $volume=$_POST['volume'];
    $prix=$_POST['prix'];
    $disponibilite=$_POST['disponibilite'];
    $statut=$_POST['statut'];
   
    
    $sql="UPDATE box SET libelle='$libelle', surface='$surface',volume='$volume', prix='$prix' , disponibilite='$disponibilite' , statut='$statut'WHERE id='$id'";
    $Modif=$bdd->prepare($sql);
    if (!$Modif->execute()) {
        die('error');
    }
    
    header('Location:http://localhost/locabox/admin/box/index.php');
    
die;
}



if (isset($_GET['supprbox'])) {
    $id=$_GET['supprbox'];
    //$_SESSION['supprauteur']=1;
  $sql="UPDATE box SET  statut=1 WHERE id='$id'";
  $requete=$bdd->prepare($sql);
  if ($requete->execute()) {
    
    header('Location: http://localhost/locabox/admin/box/index.php');
    die;
  }
}






?>