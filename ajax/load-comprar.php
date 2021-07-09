<?php

    require 'connection.php';

    $id     = $_GET['id'];

    $upd = $pdo->query("UPDATE tb_produto SET Quantidade = 1, Carrinho = 'S' WHERE idProduto = ".$id.";");

?>