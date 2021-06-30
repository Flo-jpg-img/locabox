<?php




class  BaseDeDonne
{
    const nombdd = "loca";

    const HOST = "localhost";

    const user = 'Loca';

    const mdp = 'CRo3WvtnY7vnOB1r';

    public static $bdd;

    public static $table;







    public static function getBdd()
    {
        if (self::$bdd == NULL) {
            //echo'faire la connexin';
        }
        try {
            $dsn = 'mysql:dbname=' . self::nombdd . ';host=' . self::HOST . '';
            $PDO = new PDO($dsn, self::user, self::mdp);
            //var_dump($bdd);
            echo 'connexion ok!';
        } catch (PDOException $e) {
            echo 'ERREUR: ' . $e->getMessage();
        }
        self::$bdd = $PDO;
        return self::$bdd;
    }
    public static function getTable()
    {
        self::$table = get_called_class();
        return self::$table;
    }

    public static function select($id = null)
    {
        if ($id != null) {
            $id=intval($id);
            if ( $id > 0) {
                $sql = 'SELECT * FROM ' . self::getTable() . '  WHERE id= ' . $id . ' ';
            }
        } else {
            $sql = "SELECT * FROM " . self::getTable() . " WHERE statut=0";
        }

        //var_dump($sql);
        $requette = self::getBdd()->prepare($sql);
        $requette->execute();
        $requette->setFetchMode(PDO::FETCH_CLASS, self::getTable());

        $data = ($id != null) ? $requette->fetch() : $requette->fetchAll();
        var_dump($requette);
        var_dump($data);
        return $data;
    }

    
    public static function create($obj)
    {
        $objtoarray=get_object_vars($obj);
        //var_dump( $objtoarray);
        $indexarray=array_keys($objtoarray);
        //var_dump( $indexarray);
        $nomchamp=implode(",",$indexarray);
        //var_dump( $nomchamp);
    
        
        foreach ($objtoarray as $index=>$value) {
       $objtoarrays[$index]="'".$value."'";

        }
        $objtoarrays=implode(', ',$objtoarrays) ;
        //var_dump( $objtoarrays);
        $sql="INSERT INTO ".self::getTable()." (".$nomchamp.") VALUES (".$objtoarrays.")";
        //var_dump($sql);
        // $requette = self::getBdd()->prepare($sql);
        // $requette->execute();
    }





     static function update($obj){
        $objtoarray=get_object_vars($obj);
        //var_dump( $objtoarray);
        $indexarray=array_keys($objtoarray);
        //var_dump( $indexarray);
        $nomchamp=implode(",",$indexarray);
        //var_dump( $nomchamp);
    
        
    foreach ($objtoarray as $index=>$value) {
       $objtoarrays[$index]="'".$value."'";

    }
    $objtoarrays=implode(', ',$objtoarrays) ;
    var_dump( $objtoarrays);

    $sql="UPDATE SET ".self::getTable()." (".$nomchamp.") VALUES (".$objtoarrays.")";
    var_dump($sql);
    //$requette = self::getBdd()->prepare($sql);
    //$requette->execute();
     }


    //  static function delete($id){

    //  }
}






?>