<?php
session_start();
include '../config/bdd.php';
include '../config/config.php';

$sql = "SELECT * FROM piece WHERE statut=0";
$requette = $bdd->prepare($sql);
$requette->execute();
$piece = $requette->fetchAll(PDO::FETCH_ASSOC);


///////////////////////////////////////////////////////////////////////////////AJOUT OBJET////////////////////////////////////////////////////////////////
if (isset($_POST['btn-add'])) {
  $libelle = htmlentities($_POST['libelle']);
  $statut = htmlentities($_POST['statut']);
  $pieces=$_POST['piece'];
  
  
  //$radio = $_POST['radio'];
 



  $Ajout = "INSERT INTO piece( libelle) VALUES ( '$libelle')";
  $requette_ajout = $bdd->prepare($Ajout);


  if (!$requette_ajout->execute()) {
    die('error');
  }
  header('Location: http://localhost/locabox/admin/simulateur/index_piece.php');
die;
}

if (isset($_POST['btn-modif-piece-action'])) {

    if (isset($_POST['id'])) {
        $id=intval($_POST['id']);
        if ($id<=0) {
            
        }
    }
    //var_dump($_POST);
    
    $libelle=$_POST['libelle'];
    
   
    
    $sql="UPDATE piece SET libelle='$libelle'WHERE id='$id'";
    $Modif=$bdd->prepare($sql);
    if (!$Modif->execute()) {
        die('error');
    }
    
    header('Location:http://localhost/locabox/admin/simulateur/index_piece.php');
    
die;
}

if (isset($_GET['supprpiece'])) {
    $id=$_GET['supprpiece'];
    //$_SESSION['supprauteur']=1;
  $sql="UPDATE piece SET  statut=1 WHERE id='$id'";
  $requete=$bdd->prepare($sql);
  if ($requete->execute()) {
    
    header('Location: http://localhost/locabox/admin/simulateur/index_piece.php');
    die;
  }
}
  ?>