<?php
session_start();
include '../config/bdd.php';
include '../config/config.php';

$sql = "SELECT * FROM objet WHERE statut=0";
$requette = $bdd->prepare($sql);
$requette->execute();
$objet = $requette->fetchAll(PDO::FETCH_ASSOC);


///////////////////////////////////////////////////////////////////////////////AJOUT OBJET////////////////////////////////////////////////////////////////
if (isset($_POST['btn-add'])) {
  $libelle = htmlentities($_POST['libelle']);
  $surface = doubleval($_POST['surface']);
  $volume = doubleval($_POST['volume']);
  $image = htmlentities($_POST['image']);
  $statut = htmlentities($_POST['statut']);
  $objj=$_POST['obj'];
  for ($i=0; $i<=7 ; $i++) { 
   
;  }
  var_dump($objj);
  
  //$radio = $_POST['radio'];
 



  $sql = "SELECT libelle FROM objet";
  $requete = $bdd->prepare($sql);
  if (!$requete->execute()) {
    die('error');
  }
  $libelles = $requete->fetchAll(PDO::FETCH_ASSOC);
  /////////////////////////////////////////////////////////VERIF SI LE MEME OBJET EXISTE DEJA //////////////////////////////////////////////////////
  for ($i = 0; $i < count($libelles); $i++) {
    if ($libelles[$i]['libelle'] === $libelle) {
      header('Location: http://localhost/locabox/admin/simulateur/add.php');
      $_SESSION['erreurajout'] = 1;
      die;
    }
  }



  $Ajout = "INSERT INTO objet( libelle, surface, volume, image,  statut) VALUES ( '$libelle', '$surface', '$volume' , '$image' , '$statut')";
  $requette_ajout = $bdd->prepare($Ajout);


  if (!$requette_ajout->execute()) {
    die('error');
  }
  $Ajout_ob = $bdd->lastInsertId();

///////////////////////////////////////////////////////////ajouter un objet a une ou plusieurs pieces//////////////////////////////////////////
  foreach ($_POST['obj'] as $id_piece) {
    $Ajoutob = "INSERT INTO objet_piece (id_piece, id_objet) VALUES ('$id_piece','$Ajout_ob')";
    $requette_objetpiece = $bdd->prepare($Ajoutob);
    $requette_objetpiece->execute();
  }

  
  header('Location: http://localhost/locabox/admin/simulateur/index.php');
  die;
}






///////////////////////////////////////////////MODIF OBJET//////////////////////////////////////////////////////////
if (isset($_POST['btn-modif-objet-action'])) {

  if (isset($_POST['id'])) {
    $id = intval($_POST['id']);
    if ($id <= 0) {
    }
  }
  //var_dump($_POST);

  $libelle = $_POST['libelle'];
  $surface = $_POST['surface'];
  $volume = $_POST['volume'];
  $image = $_POST['image'];
  $statut = $_POST['statut'];


  $sql = "UPDATE objet SET libelle='$libelle', surface='$surface',volume='$volume' , image='$image' , statut='$statut' WHERE id='$id'";
  $Modif = $bdd->prepare($sql);
  if (!$Modif->execute()) {
    die('error');
  }
  $_SESSION['erreurMODIF'] = 1;

  header('Location:http://localhost/locabox/admin/simulateur/index.php');

  die;
}


///////////////////////////////////////////////SUPRESION OBJET//////////////////////////////////////////////////////////

if (isset($_GET['supprobjet'])) {
  $id = $_GET['supprobjet'];

  $sql = "UPDATE objet SET  statut=1 WHERE id='$id'";
  $requete = $bdd->prepare($sql);
  if ($requete->execute()) {

    header('Location: http://localhost/locabox/admin/simulateur/index.php');

    die;
  }
}

if (isset($_GET['reacobjet'])) {
  $id = $_GET['reacobjet'];

  $sql = "UPDATE objet SET  statut=0 WHERE id='$id'";
  $requete = $bdd->prepare($sql);
  if ($requete->execute()) {

    header('Location: http://localhost/locabox/admin/simulateur/index.php');

    die;
  }
}
