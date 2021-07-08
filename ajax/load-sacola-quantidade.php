<?php

require 'connection.php';

$id             = $_GET['id'];
$quantidade     = $_GET['quantidade'];

$upd = $pdo->query("UPDATE tb_produto SET Quantidade = ".$quantidade." WHERE idProduto = ".$id.";");    

?>