<?php 


function isConnect(){
    if (isset($_SESSION['connect']) && $_SESSION['connect'] == true) {
      return true;
    }
    return false;
  }
 define('URL_ADMIN','http://localhost/locabox/admin/');

?>