<?php 
session_start();
include '../config/bdd.php';
include '../config/config.php';
include '../inc/inc.php';
include '../inc/sidebar.php';
include '../inc/topbar.php';

$sql= "SELECT * FROM uilisateur ";

$requete=$bdd->prepare($sql);
$requete->execute();
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
    <h1>info persos</h1>
    <table class="table text-center">
  <thead>
    <tr>
      <th scope="col">id</th>
      <th scope="col">Nom</th>
      <th scope="col">Prenom</th>
      <th scope="col">Pseudo</th>
      <th scope="col">Mail</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row"><?= $_SESSION['user']['id'] ?></th>
      <td><?= $_SESSION['user']['nom'] ?></td>
      <td><?= $_SESSION['user']['prenom'] ?></td>
      <td><?= $_SESSION['user']['pseudo'] ?></td>
      <td><?= $_SESSION['user']['mail'] ?></td>
    </tr>
  </tbody>
</table>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
  </body>
</html>
<?php
include '../inc/footer.php';
include '../inc/bottom.php';
?>