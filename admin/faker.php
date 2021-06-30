<?php 
session_start();
include 'config/config.php';
include 'config/bdd.php';
require_once 'vendor/autoload.php';
include 'inc/inc.php';
include 'inc/sidebar.php';
include 'inc/topbar.php';
?>
<h1 class="text-center"> Faker</h1>

<?php 
    $faker=Faker\Factory::create('fr_FR');
    $nom=$faker -> firstName; 
    $prenom=$faker -> lastName; 
    $mail=$faker -> safeEmail;
    $telephone_fixe=$faker -> phoneNumber;
    $telephone_portable=$faker -> phoneNumber;
    $ville=$faker -> city;
    $code_postal=$faker -> postcode;
    $n°SIRET=strval($faker->randomFloat($nbMaxDecimals = NULL, $min = 11111111111111, $max = 99999999999999));
    $denomination_social=$faker -> company ;

    $clients=array();
    //clients particuliers
    for ($i=0; $i <65 ; $i++) { 
        $client['nom']=$faker -> firstName;
        $client['prenom']=$faker -> lastName;
        $client['mail']=$faker -> safeEmail;
        $client['telephone_fixe']=$faker ->phoneNumber;
        $client['telephone_portable']=$faker ->phoneNumber;
        $client['ville']=$faker ->city;
        $client['code_postal']=$faker ->postcode;
        $client['n°SIRET']=NULL;
        $client['denomination_social']=NULL;
        //var_dump($client);
      array_push($clients,$client);
    }
     //clients particuliers
     for ($i=0; $i <35 ; $i++) { 
        $client['nom']=$faker -> firstName;
        $client['prenom']=$faker -> lastName;
        $client['mail']=$faker -> safeEmail;
        $client['telephone_fixe']=$faker ->phoneNumber;
        $client['telephone_portable']=$faker ->phoneNumber;
        $client['ville']=$faker ->city;
        $client['code_postal']=$faker ->postcode;
        $client['n°SIRET']=strval($faker->randomFloat($nbMaxDecimals = NULL, $min = 11111111111111, $max = 99999999999999));
        $client['denomination_social']=$faker -> company ;
        //var_dump($client);
      array_push($clients,$client);
    }
    //var_dump($clients);
foreach ($clients as $client) {
   $sql= 'INSERT INTO client VALUES (NULL, "'.$client["nom"].'", "'.$client["prenom"].'", "'.$client["mail"].'", "'.$client["telephone_fixe"].'", "'.$client["telephone_portable"].'", "'.$client["ville"].'", "'.$client["code_postal"].'", "'.$client["n°SIRET"].'", "'.$client["denomination_social"].'", 0)';
   //var_dump($sql);
   //$requete= $bdd->prepare($sql);
   //$requete->execute();
}
?>
<?php
include 'inc/footer.php';
include 'inc/bottom.php';
?>



   