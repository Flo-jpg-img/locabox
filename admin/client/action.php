<?php
session_start();
include '../config/bdd.php';
include '../config/config.php';
include '../Class/Client.php';

// $sql="SELECT * FROM client ORDER BY id";
// $requette= $bdd->prepare($sql);
// $requette->execute();
// $client=$requette->fetchAll(PDO::FETCH_ASSOC);



// if(isset($_POST['btn-add'])){
//   foreach ($_POST as $value) {
//     $value=addslashes(htmlentities($value));
//   }
// $client=new Client($_POST);

// $client->create($bdd);
//var_dump($client);

//$nom=htmlentities($_POST['nom']);
//$prenom=htmlentities($_POST['prenom']);
//$mail=htmlentities($_POST['mail']);
//$tel_fixe=htmlentities($_POST['tel_fixe']);
//$tel_portable=htmlentities($_POST['tel_portable']);
//$ville=htmlentities($_POST['ville']);
//$code_postal=htmlentities($_POST['code_postal']);
//$N°SIRET=htmlentities($_POST['N°SIRET']);
//$denomination_sociale=htmlentities($_POST['denomination_sociale']);
 //$client0=new Client($nom, $prenom, $mail , $tel_fixe, $tel_portable, $ville, $code_postal, $N°SIRET,$denomination_sociale);


//$Ajout="INSERT INTO client( nom, prenom, mail, telephone_fixe, telephone_portable, ville, code_postal, n°SIRET, denomination_social) VALUES ( '$nom', '$prenom', '$mail' , '$tel_fixe' , '$tel_portable' , '$ville' ,'$code_postal', '$N°SIRET','$denomination_sociale')";
//$requette_ajout= $bdd->prepare($Ajout);
//if (!$requette_ajout->execute()) {
    //die('error');
// }

//header('Location: http://localhost/locabox/admin/');
//die;
//}


// if (isset($_POST['btn-modif-client-action'])) {
//   foreach ($_POST as  $value) {
//     $value=addslashes(htmlentities($value));
// }

// $client=new Client($_POST);
// $client->update($bdd);  
// header("location:index.php");

 
  //var_dump($_POST);
  
  //$nom=htmlentities($_POST['nom']);
  //$prenom=htmlentities($_POST['prenom']);
  //$mail=htmlentities($_POST['mail']);
  //$tel_fixe=htmlentities($_POST['tel_fixe']);
  //$tel_portable=htmlentities($_POST['tel_portable']);
  //$ville=htmlentities($_POST['ville']);
  //$code_postal=htmlentities($_POST['code_postal']);
  //$N°SIRET=htmlentities($_POST['N°SIRET']);
 // $denomination_sociale=htmlentities($_POST['denomination_sociale']);
 
  
  //$sql="UPDATE client SET nom='$nom', prenom='$prenom',mail='$mail', telephone_fixe='$tel_fixe' , telephone_portable='$tel_portable' , ville='$ville' ,code_postal='$code_postal', n°SIRET='$N°SIRET' , denomination_social='$denomination_sociale' WHERE id='$id'";
  //$Modif=$bdd->prepare($sql);
  //if (!$Modif->execute()) {
   //   die('error');
  //  header('Location:http://localhost/locabox/admin/client/index.php');
  
  //  die;
  // }
  
 


//if (isset($_GET['supprclient'])) {
  //$id=$_GET['supprclient'];
  //$_SESSION['supprauteur']=1;
//$sql="UPDATE client SET  statut=1 WHERE id='$id'";
//$requete=$bdd->prepare($sql);
//if ($requete->execute()) {
  
 // header('Location: http://localhost/locabox/admin/client/index.php');
  //die;
//}
//}
if ($_GET['delete']) {
  $id=intval($_GET["id"]);

 if ($id>0) {
  $sql='SELECT * FROM client WHERE id="'.$id.'"';
  $requete=$bdd->prepare($sql);
  $requete->execute();
  $requete->setFetchMode(PDO::FETCH_CLASS, 'Client');
  $client = $requete->fetch();
  $client->delete($bdd);
  header("location:index.php");
 }
}

if (isset($_GET['reacclient'])) {
  $id = $_GET['reacclient'];

  $sql = "UPDATE client SET  statut=0 WHERE id='$id'";
  $requete = $bdd->prepare($sql);
  if ($requete->execute()) {

    header('Location: http://localhost/locabox/admin/client/index.php');

    die;
  }
}
?>