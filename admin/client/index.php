<?php 
session_start();
include '../config/bdd.php';
include '../config/config.php';
include '../Class/Client.php';
include '../inc/inc.php';
include '../inc/sidebar.php';
include '../inc/topbar.php';





$sql= "SELECT * FROM client WHERE  statut=0 ";

$requete=$bdd->prepare($sql);
$requete->execute();
 $requete->setFetchMode(PDO::FETCH_CLASS, 'Client');
$clients=$requete->fetchAll();
     //echo $client->nom ;
    
?>

    <title>Hello, world!</title>
  </head>
  <body>
    <h1>Liste client</h1>
    
    <table class="table table-sm text-center">
  <thead>
    <tr>
      <th scope="col">id</th>
      <th scope="col">Nom</th>
      <th scope="col">Prenom</th>
      <th scope="col">mail</th>
      <th scope="col">Téléphone fixe</th>
      <th scope="col">Téléphone Portable</th>
      <th scope="col">Ville</th>
      <th scope="col">Code Postale</th>
      <th scope="col">N°Siret</th>
      <th scope="col">Dénomination sociale</th>
      <th scope="col">Modifier</th>
      <th scope="col">Supprimer</th>
    </tr>
  </thead>
  <?php foreach ($clients as $client): ?>
                <tr>
                    <th scope="row"><?php echo $client->id  ?></th>
                    <td><?php echo $client->nom ?></td>
                    <td><?php echo $client->prenom ?></td>
                    <td><?php echo $client->mail ?></td>
                    <td><?php echo $client->telephone_fixe  ?></td>
                    <td><?php echo $client->telephone_portable  ?></td>
                    <td><?php echo $client->ville  ?></td>
                    <td><?php echo $client->code_postal  ?></td>
                    <td><?php echo $client->n°SIRET  ?></td>
                    <td><?php echo $client->denomination_social ?></td>
                    <td><a class="btn btn-warning" href="update.php?id=<?=$client->id?>" >Modifier</a></td>
                    <td><a  class="btn btn-danger" href="action.php?id=<?=$client->id?>&delete=true">Supprimer</a></td>
                </tr>
            <?php endforeach; ?>
</table>
<?php
include '../inc/footer.php';
include '../inc/bottom.php';
?>
    