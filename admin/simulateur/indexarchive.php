<?php 
session_start();
include '../config/bdd.php';
include '../config/config.php';
include '../inc/inc.php';
include '../inc/sidebar.php';
include '../inc/topbar.php';




$sql= "SELECT * FROM objet WHERE statut=1 ";

$requete=$bdd->prepare($sql);
$requete->execute();
$objet = $requete->fetchAll(PDO::FETCH_ASSOC);

if (isset($_SESSION['erreurMODIF']))
{
  echo'<div class="alert alert-warning alert-dismissible fade show text-center "  role="alert" > L objet a bien était supprimmé!
      <button type="button"  class="close" class="btn-close" data-dismiss="alert" aria-label="Close"></button>
    </div>';
}

unset($_SESSION['erreurMODIF']);
?>

    <title>Hello, world!</title>
  </head>
  <body>
    <h1 class="text-center">Liste des objets archivés</h1>
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
  <?php foreach ($objet as $obje): ?>
                <tr>
                    <th scope="row"><?php echo $obje['id'] ?></th>
                    <td><?php echo $obje['libelle'] ?></td>
                    <td><?php echo $obje['surface'] ?>m²</td>
                    <td><?php echo $obje['volume'] ?>m³</td>
                    <td><?php echo $obje['image']  ?></td>
                    <td><?php echo $obje['statut']  ?></td>
                    <td> <a class="btn btn-primary" href="action.php?reacobjet=<?=  $obje['id']  ?>  ">Réactiver</td>
                    
                </tr>
            <?php endforeach; ?>
</table>
<?php



include '../inc/footer.php';
include '../inc/bottom.php';
?>
    