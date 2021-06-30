<?php
//include '../config/bdd.php';
include "BaseDeDonne.php";


class Client extends BaseDeDonne
 {
    public $id;
    public $nom;
    public $prenom;
    public $mail;
   public $telephone_fixe;
    public $telephone_portable;
    public $ville;
    public $code_postal;
    public $n°SIRET;
    public $denomination_social;
    public $statut;

    public function __construct(array $array = array())
    {
        if ($array!=null) {
            if (isset($array['id'])) {
                $this->id=$array['id'];
            }
            $this->nom= $array['nom'];
            $this->prenom= $array['prenom'];
            $this->mail= $array['mail'];
            $this->telephone_fixe= $array['telephone_fixe'];
            $this->telephone_portable= $array['telephone_portable'];
            $this->ville= $array['ville'];
            $this->code_postal= $array['code_postal'];
            $this->n°SIRET= $array['n°SIRET'];
            $this->denomination_social= $array['denomination_social'];
            $this->statut= $array['statut'];
        }
        }
        
//public function update($bdd){
    //$sql='UPDATE client 
    //SET nom="'.$this->nom.'" , prenom="'.$this->prenom.'" ,mail="'.$this->mail.'" ,telephone_fixe="'.$this->telephone_fixe.'" ,telephone_portable="'.$this->telephone_portable.'" ,ville="'.$this->ville.'" ,code_postal="'.$this->code_postal.'" , n°SIRET="'.$this->n°SIRET.'" , denomination_social="'.$this->denomination_social.'" WHERE id="'.$this->id.'"';
     //$requete=$bdd->prepare($sql);
     //$requete->execute();
//}

//public function create($bdd){
    //$Ajout="INSERT INTO client( nom, prenom, mail, telephone_fixe, telephone_portable, ville, code_postal, n°SIRET, denomination_social,statut) VALUES ( '$this->nom', '$this->prenom', '$this->mail' , '$this->telephone_fixe' , '$this->telephone_portable' , '$this->ville' ,'$this->code_postal', '$this->n°SIRET','$this->denomination_social','$this->statut')";
    //$requete=$bdd->prepare($Ajout);
     //$requete->execute();

     //if (!$requete->execute()) {
       // echo'njope';
        //die;
    //}
    //header("location:http://localhost/locabox/admin/client/ ");
//}
//public function delete($bdd)
//{
    //$sql = 'UPDATE client
    //SET statut = "' . 1 . '"
    //WHERE id="' . $this->id .'"';
    //var_dump($sql);
    //$requete = $bdd->prepare($sql);
    //$requete->execute();
//}
}
?>