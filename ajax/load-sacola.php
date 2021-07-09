<?php

require 'connection.php';

include('functionModal');

$id   = $_GET['id'];

$upd = $pdo->query("UPDATE tb_produto SET Quantidade = 0, Carrinho = 'N' WHERE idProduto = ".$id.";");    

$sql = $pdo->query("SELECT * FROM tb_produto WHERE Carrinho = 'S';");

if($sql->rowCount() > 0){
    foreach($sql->fetchAll() as $campo){
        
        echo 
        '<div class="card-produto-sacola">'
            .'<img src="'.$campo['FotoExibicao'].'" alt="">'
            .'<div class="descricao-produto-sacola">'
                .'<div class="texto-sacola">'
                    .'<a href="#" onclick=iniciaModal("modal-produto","'.$campo['idProduto'].'")>'
                        .'<p>'.$campo['TituloProduto'].'</p>'
                    .'</a>'
                    .'<span>R$&nbsp</span>'
                    .'<span id="id'.$campo['idProduto'].'">'.($campo['Preco']*$campo['Quantidade']).'</span>'
                    .'<p>'.$campo['Tamanho'].'</p>'
                    .'<div class="quantidade-sacola">'
                        .'<button onclick=removerProduto('.$campo['idProduto'].','.$campo['Preco'].')>-</button>'
                        //.'<span id="'.$campo['idProduto'].'">1</span>'
                        .'<input readonly type="text" name="" id="produto'.$campo['idProduto'].'" value="'.$campo['Quantidade'].'">'
                        .'<button onclick=adicionarProduto('.$campo['idProduto'].','.$campo['Preco'].')>+</button>'
                    .'</div>'
                .'</div>'
                .'<a href="#" onclick=functionTirarSacola('.$campo['idProduto'].')><svg aria-hidden="true" focusable="false" data-prefix="fal" data-icon="times" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512" class="svg-inline--fa fa-times fa-w-10 fa-2x"><path fill="currentColor" d="M193.94 256L296.5 153.44l21.15-21.15c3.12-3.12 3.12-8.19 0-11.31l-22.63-22.63c-3.12-3.12-8.19-3.12-11.31 0L160 222.06 36.29 98.34c-3.12-3.12-8.19-3.12-11.31 0L2.34 120.97c-3.12 3.12-3.12 8.19 0 11.31L126.06 256 2.34 379.71c-3.12 3.12-3.12 8.19 0 11.31l22.63 22.63c3.12 3.12 8.19 3.12 11.31 0L160 289.94 262.56 392.5l21.15 21.15c3.12 3.12 8.19 3.12 11.31 0l22.63-22.63c3.12-3.12 3.12-8.19 0-11.31L193.94 256z" class=""></path></svg></a>'
            .'</div>'
        .'</div>';
    }
}

?>