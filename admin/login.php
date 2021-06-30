<?php
include 'config/config.php';
include 'inc/inc.php';
include 'config/bdd.php';


?>
<?php //var_dump(password_hash('azerty',PASSWORD_DEFAULT));
?>
    <h1 >Connexion</h1>
    </div>
    <form action="action.php" method="POST"class="container text-center">
    <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">adresse mail</label>
    <input type="mail" class="form-control text-center" name="mail" value="" >
  </div>
  <div class="mb-3">
    <label for="titre" class="form-label">Mot de passe:</label>
    <input type="password" class="form-control text-center" name="mdp" value="" >
  </div>
 
  <button type="submit" name="btn-login" class="btn btn-success btn-lg">Connexion</button>
</form>
    <?php

    ?>


<?php

//var_dump($_SESSION);
include 'inc/bottom.php';
?>