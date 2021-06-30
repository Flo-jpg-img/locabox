<?php 
session_start();
include '../config/bdd.php';
include '../config/config.php';
include '../inc/inc.php';
include '../inc/sidebar.php';
include '../inc/topbar.php';




$sql= "SELECT * FROM client WHERE statut=1 ";

$requete=$bdd->prepare($sql);
$requete->execute();
$client = $requete->fetchAll(PDO::FETCH_ASSOC);

if (isset($_SESSION['erreurMODIF']))
{
  echo'<div class="alert alert-warning alert-dismissible fade show text-center "  role="alert" > L client a bien était supprimmé!
      <button type="button"  class="close" class="btn-close" data-dismiss="alert" aria-label="Close"></button>
    </div>';
}

unset($_SESSION['erreurMODIF']);
?>

    <title>Hello, world!</title>
  </head>
  <body>
    <h1 class="text-center">Liste des clients archivés</h1>
    <table class="table text-center">
  <thead>
    <tr>
      <th scope="col">id</th>
      <th scope="col">libelle</th>
      <th scope="col">Surface</th>
      <th scope="col">Volume</th>
      <th scope="col">image</th>
      <th scope="col">Statut</th>
      <th scope="col">Réactiver</th>
    </tr>
  </thead>
  <?php foreach ($client as $clien): ?>
                <tr>
                <th scope="row"><?php echo $clien['id'] ?></th>
                    <td><?php echo $clien['nom'] ?></td>
                    <td><?php echo $clien['prenom'] ?></td>
                    <td><?php echo $clien['mail'] ?></td>
                    <td><?php echo $clien['telephone_fixe']  ?></td>
                    <td><?php echo $clien['telephone_portable']  ?></td>
                    <td><?php echo $clien['ville']  ?></td>
                    <td><?php echo $clien['code_postal']  ?></td>
                    <td><?php echo $clien['n°SIRET']  ?></td>
                    <td><?php echo $clien['denomination_social']  ?></td>
                    <td> <a class="btn btn-primary" href="action.php?reacclient=<?=  $clien['id']  ?>  ">Réactiver</td>
                    
                </tr>
            <?php endforeach; ?>
</table>
<?php



include '../inc/footer.php';
include '../inc/bottom.php';
?>
    