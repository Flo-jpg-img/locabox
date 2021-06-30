
<?php session_start();

include '../config/config.php';
include '../inc/inc.php';
include '../inc/sidebar.php';
include '../inc/topbar.php';
?>




  
  <div class="container text-center" >
    <h1>Ajout d'un nouveau box</h1>
    <p>Pour ajouter un nouveau box vous devez remplir les infos suivantes</p>
    </div>
    <form action="action.php" method="POST"class="container text-center">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Nom:</label>
    <input type="text" class="form-control text-center" name="nom" aria-describedby="emailHelp">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Prenom:</label>
    <input type="text" class="form-control text-center" name="prenom">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Mail:</label>
    <input type="email" class="form-control text-center" name="mail">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Téléphone fixe:</label>
    <input type="number" class="form-control text-center" name="tel_fixe">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Téléphone_portable:</label>
    <input type="number" class="form-control text-center" name="tel_portable">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Ville:</label>
    <input type="text" class="form-control text-center" name="ville">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Code postale:</label>
    <input type="number" class="form-control text-center" name="code_postal">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">N°SIRET:</label>
    <input type="number" class="form-control text-center" name="N°SIRET">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Dénomination social:</label>
    <input type="number" class="form-control text-center" name="denomination_sociale">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Statut:</label>
    <input type="number" class="form-control text-center" name="statut">
  </div>
  <button type="submit" name="btn-add" class="btn btn-primary">Ajouter</button>
</form>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

   
  
  

<?php
include '../inc/footer.php';
include '../inc/bottom.php';
?>
    