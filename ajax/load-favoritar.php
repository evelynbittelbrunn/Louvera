<?php

require 'connection.php';

$id     = $_GET['id'];
$tipo   = $_GET['tipo'];

if($tipo == "inserir"){
    $upd = $pdo->query("UPDATE tb_produto SET FlgFavorito = 'S' WHERE idProduto = ".$id.";");
}else{
    $upd = $pdo->query("UPDATE tb_produto SET FlgFavorito = 'N' WHERE idProduto = ".$id.";");    
}

?>