<?php 
session_start();
include 'config/config.php';
if (!isConnect()) {
  header('Location:login.php');
  die;
}
include 'inc/inc.php';
include 'inc/sidebar.php';
include 'inc/topbar.php';
//include 'Class/Box.php';
include 'Class/Client.php'
?>
<?php 
//var_dump(BaseDeDonne::getBdd());
//var_dump(BaseDeDonne::getTable());
//var_dump(Box::getBdd());
//var_dump(Box::getTable());
//var_dump(Client::getBdd());
//var_dump(Client::getTable());
//var_dump(Client::select());
var_dump(Client::update(Client::select(5)));
$client= array(
  'nom'=>'tttt',
  'prenom'=>'zfirierf',
  'mail'=>'zfirierf@erger.fr',
  'telephone_fixe'=>'05254254',
  'telephone_portable'=>'27522572',
  'ville'=>'zfirierf',
  'code_postal'=>'25325',
  'n°SIRET'=>'725242',
  'denomination_social'=>'zfirierf',
  'statut'=>'0'
);
$client1=new Client($client);
Client::create($client1);




?>
<?php
include 'inc/footer.php';
include 'inc/bottom.php';
?>



   