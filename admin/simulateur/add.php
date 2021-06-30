<?php  session_start();
include '../config/bdd.php';
include '../config/config.php';
include '../inc/inc.php';
include '../inc/sidebar.php';
include '../inc/topbar.php';

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
    <h1>Ajout d'un nouveau box</h1>
    <p>Pour ajouter un nouveau box vous devez remplir les infos suivantes</p>
    </div>
    <form action="action.php" method="POST"class="container text-center">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">libelle:</label>
    <input type="text" class="form-control text-center" name="libelle" aria-describedby="emailHelp">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">surface:</label>
    <input type="number" class="form-control text-center" name="surface">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">volume:</label>
    <input type="number" class="form-control text-center" name="volume">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">image:</label>
    <input type="number" class="form-control text-center" name="image">
  </div>

  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">statut:</label>
    <input type="number" class="form-control text-center" name="statut">
  </div>
  
  <?php
  
  $sql="SELECT * FROM piece WHERE statut=0";
  $requette= $bdd->prepare($sql);
  $requette->execute();
  $piece=$requette->fetchAll(PDO::FETCH_ASSOC);
  
  
    ?>
    <div>
    <?php foreach ($piece as $piec): ?>
      <input class="form-check-input" type="checkbox" name="obj[]"  value="<?php echo $piec ['id'] ?>">
      <label class="form-check-label"  ><?php echo $piec ['libelle'] ?> </label><br>


    <?php endforeach; ?>
    </div>
  <button type="submit" name="btn-add" class="btn btn-primary">Ajouter</button>
</form>


   <?php 
    if (isset($_SESSION['erreurajout']))
  {
    echo'<div class="alert alert-danger alert-dismissible fade show text-center container mt-2 d-{none}"  role="alert" > Cet objet existe deja en base de donné!
        <button type="button" class="close" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
      </div>';
  }
  
  unset($_SESSION['erreurajout']);
?>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

   
  
  </body>
</html>
<?php
include '../inc/footer.php';
include '../inc/bottom.php';
?>