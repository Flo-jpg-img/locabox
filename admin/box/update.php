<?php 
session_start();
include '../config/bdd.php';
include '../config/config.php';
include '../inc/inc.php';
include '../inc/sidebar.php';
include '../inc/topbar.php';

if(isset($_GET['modifbox'])){
 
 $id=intval($_GET['modifbox']);
 if ($id>0) {
   $sql = "SELECT * FROM box WHERE id = " . $id;
   $requete = $bdd->prepare($sql);
   $requete->execute();
   $box = $requete->fetch(PDO::FETCH_ASSOC);
 }
   


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
   <h1>Modification d'un box</h1>
   </div>
   <form action="action.php" method="POST"class="container text-center">
   <div class="mb-3">
   <label for="exampleInputEmail1" class="form-label">ID</label>
   <input type="text" class="form-control text-center" name="id" value="<?= $id ?>" readonly>
 </div>
 <div class="mb-3">
   <label for="exampleInputEmail1" class="form-label">Libelle:</label>
   <input type="text" class="form-control text-center" name="libelle" value="<?=$box['libelle']?>">
 </div>
 <div class="mb-3">
   <label for="exampleInputPassword1" class="form-label">Surface:</label>
   <input type="number" class="form-control text-center" name="surface" value="<?=$box['surface']?>">
 </div>
 <div class="mb-3">
   <label for="exampleInputPassword1" class="form-label">Volume:</label>
   <input type="text" class="form-control text-center" name="volume" value="<?=$box['volume']?>">
 </div>
 <div class="mb-3">
   <label for="exampleInputPassword1" class="form-label">Prix:</label>
   <input type="text" class="form-control text-center" name="prix" value="<?=$box['prix']?>">
 </div>
 <div class="mb-3">
   <label for="exampleInputPassword1" class="form-label">Disponibilite</label>
   <input type="text" class="form-control text-center" name="disponibilite" value="<?=$box['disponibilite']?>">
 </div>
 <div class="mb-3">
   <label for="exampleInputPassword1" class="form-label">Statut:</label>
   <input type="text" class="form-control text-center" name="statut" value="<?=$box['statut']?>">
 </div>
 <button type="submit" name="btn-modif-box-action" class="btn btn-primary">Valider</button>
</form>
   
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

  
 
 </body>
</html>
<?php
include '../inc/footer.php';
include '../inc/bottom.php';
?>