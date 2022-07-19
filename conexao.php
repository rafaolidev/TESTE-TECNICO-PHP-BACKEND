<?php

function conexao(){
    $username = 'root';
    $password = '';
    try {
        $con = new PDO('mysql:host=127.0.0.1;dbname=teste_selecty', $username, $password);
          $con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
      } catch(PDOException $e) {
          echo 'ERROR: ' . $e->getMessage();
    }

    return $con;
}
