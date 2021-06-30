<?php 
session_start();

include '../config/config.php';
include '../config/bdd.php';
include '../Class/Client.php';
include '../inc/inc.php';
include '../inc/sidebar.php';
include '../inc/topbar.php';

$id = intval($_GET['id']);
if ($id > 0) {
    $sql = "SELECT * FROM client WHERE id='" . $id . "'";
    $requete = $bdd->prepare($sql);
    $requete->execute();
    $requete->setFetchMode(PDO::FETCH_CLASS, 'Client');
    $client = $requete->fetch();
    
}
//var_dump($id)
?>
<!doctype html>
<html lang="en">
 <head>
   <!-- Required meta tags -->
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">

   <!-- Bootstrap CSS -->
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

   <title>Hello, world!</title>
 </head>
 <body>
 <div class="container text-center" >
   <h1>Modification d'un client</h1>
   </div>
   <form action="action.php" method="POST"class="container text-center">
   <div class="mb-3">
   <label for="exampleInputEmail1" class="form-label">ID</label>
   <input type="text" class="form-control text-center" name="id" value="<?= $client->id ?>" readonly>
 </div>
 <div class="mb-3">
   <label for="exampleInputEmail1" class="form-label">Nom:</label>
   <input type="text" class="form-control text-center" name="nom" value="<?=$client->nom ?>">
 </div>
 <div class="mb-3">
   <label for="exampleInputPassword1" class="form-label">Prenom:</label>
   <input type="text" class="form-control text-center" name="prenom" value="<?=$client->prenom?>">
 </div>
 <div class="mb-3">
   <label for="exampleInputPassword1" class="form-label">Mail:</label>
   <input type="mail" class="form-control text-center" name="mail" value="<?=$client->mail?>">
 </div>
 <div class="mb-3">
   <label for="exampleInputPassword1" class="form-label">Téléphone fixe:</label>
   <input type="text" class="form-control text-center" name="tel_fixe" value="<?=$client->telephone_fixe?>">
 </div>
 <div class="mb-3">
   <label for="exampleInputPassword1" class="form-label">Téléphone Portable</label>
   <input type="text" class="form-control text-center" name="ville" value="<?=$client->telephone_portable ?>">
 </div>
 <div class="mb-3">
   <label for="exampleInputPassword1" class="form-label">Ville:</label>
   <input type="text" class="form-control text-center" name="code_postal" value="<?=$client->ville ?>">
 </div>
 <div class="mb-3">
   <label for="exampleInputPassword1" class="form-label">Code Postale:</label>
   <input type="text" class="form-control text-center" name="N°SIRET" value="<?=$client->code_postal ?>">
 </div>
 <div class="mb-3">
   <label for="exampleInputPassword1" class="form-label">N°SIRET:</label>
   <input type="text" class="form-control text-center" name="denomination_sociale" value="<?=$client->n°SIRET?>">
 </div>
 <div class="mb-3">
   <label for="exampleInputPassword1" class="form-label">Dénomination sociale:</label>
   <input type="text" class="form-control text-center" name="statut" value="<?=$client->denomination_social?>">
 </div>

 <button type="submit" name="btn-modif-client-action" class="btn btn-primary">Valider</button>
</form>
   
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

  
 
 </body>
</html>
<?php
include '../inc/footer.php';
include '../inc/bottom.php';
?>