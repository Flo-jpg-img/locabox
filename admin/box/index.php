<?php 
session_start();
include '../config/bdd.php';
include '../config/config.php';
include '../inc/inc.php';
include '../inc/sidebar.php';
include '../inc/topbar.php';




$sql= "SELECT * FROM box WHERE statut=0 ";

$requete=$bdd->prepare($sql);
$requete->execute();
$box = $requete->fetchAll(PDO::FETCH_ASSOC);
?>

    <title>Hello, world!</title>
  </head>
  <body>
    <h1 class="text-center">Liste des boxs</h1>
    <table class="table text-center">
  <thead>
    <tr>
      <th scope="col">id</th>
      <th scope="col">libelle</th>
      <th scope="col">Surface</th>
      <th scope="col">Volume</th>
      <th scope="col">Prix</th>
      <th scope="col">Disponibilite</th>
      <th scope="col">Statut</th>
      <th scope="col">Modifier</th>
      <th scope="col">Supprimer</th>
    </tr>
  </thead>
  <?php foreach ($box as $bo): ?>
                <tr>
                    <th scope="row"><?php echo $bo['id'] ?></th>
                    <td><?php echo $bo['libelle'] ?></td>
                    <td><?php echo $bo['surface'] ?></td>
                    <td><?php echo $bo['volume'] ?></td>
                    <td><?php echo $bo['prix']  ?></td>
                    <td><?php echo $bo['disponibilite']  ?></td>
                    <td><?php echo $bo['statut']  ?></td>
                    <td> <a class="btn btn-warning" href="update.php?modifbox=<?=  $bo['id']  ?>">Modifier</td>
                    <td> <a class="btn btn-danger" href="action.php?supprbox=<?=  $bo['id']  ?>">Supprimer</td>
                    
                </tr>
            <?php endforeach; ?>
</table>
<?php
include '../inc/footer.php';
include '../inc/bottom.php';
?>
    