<?php

require 'connection.php';

//include('functionModal');

$id   = $_GET['id'];

$upd = $pdo->query("UPDATE tb_produto SET FlgFavorito = 'N' WHERE idProduto = ".$id.";");    

$sql = $pdo->query("SELECT * FROM tb_produto WHERE FlgFavorito = 'S';");

if($sql->rowCount() > 0){
    foreach($sql->fetchAll() as $value){
        
        echo 
        '<div class="card">'
            .'<a href="#" onclick=iniciaModal("modal-produto","'.$value['idProduto'].'")>'
                .'<img src="'.$value['FotoExibicao'].'" alt="'.$value['TituloProduto'].'">'
                .'<div class="card-bottom">'
                    .'<h4>'.$value['TituloProduto'].'</h4>'
                    .'<div class="card-preco">'
                        .'<span>R$ '.$value['Preco'].'</span>'
                    .'</div>'
                .'</div>'
            .'</a>'
            //.'<i class="far fa-heart" onclick="functionFavorito('.$campo['idProduto'].')" id="'.$campo['idProduto'].'"></i>'    
            .'<a href="#" onclick="functionDesfavoritar('.$value['idProduto'].')" id="'.$value['idProduto'].'"><svg class="close" aria-hidden="true" style="height: 1em; right: 4%;" focusable="false" data-prefix="fal" data-icon="times" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512" class="svg-inline--fa fa-times fa-w-10 fa-2x"><path class="close" fill="currentColor" d="M193.94 256L296.5 153.44l21.15-21.15c3.12-3.12 3.12-8.19 0-11.31l-22.63-22.63c-3.12-3.12-8.19-3.12-11.31 0L160 222.06 36.29 98.34c-3.12-3.12-8.19-3.12-11.31 0L2.34 120.97c-3.12 3.12-3.12 8.19 0 11.31L126.06 256 2.34 379.71c-3.12 3.12-3.12 8.19 0 11.31l22.63 22.63c3.12 3.12 8.19 3.12 11.31 0L160 289.94 262.56 392.5l21.15 21.15c3.12 3.12 8.19 3.12 11.31 0l22.63-22.63c3.12-3.12 3.12-8.19 0-11.31L193.94 256z" class=""></path></svg></a>'         
        .'</div>';

    }
}

?>