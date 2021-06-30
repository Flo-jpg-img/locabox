<?php session_start();

include '../config/config.php';
include '../inc/inc.php';
include '../inc/sidebar.php';
include '../inc/topbar.php';
?>
    <title>Hello, world!</title>
  </head>
  <body>
  <div class="container text-center" >
    <h1>Ajout d'un nouveau box</h1>
    <p>Pour ajouter un nouveau box vous devez remplir les infos suivantes</p>
    </div>
    <form action="action_piece.php" method="POST"class="container text-center">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">libelle:</label>
    <input type="text" class="form-control text-center" name="libelle" aria-describedby="emailHelp">
  </div>
  <div class="mb-3">
   
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">statut:</label>
    <input type="number" class="form-control text-center" name="statut">
  </div>
  <button type="submit" name="btn-add" class="btn btn-primary">Ajouter</button>
</form>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

   
  
    <?php
include '../inc/footer.php';
include '../inc/bottom.php';
?>
