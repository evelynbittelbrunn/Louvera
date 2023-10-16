<?php

require 'connection.php';

//include('functionModal');

$tipo = $_GET['tipo'];
$id   = $_GET['filtro'];


switch ($tipo) {
    case 'preco':
        $sql = $pdo->query("SELECT * FROM tb_produto ".$id .";");
        break;
    case 'tamanho':
        echo "i equals 1";
        break;
    case 'marca':
        $sql = $pdo->query("SELECT * FROM tb_produto WHERE Marca = '".$id ."';");
        break;
    case 'cor':
        $sql = $pdo->query("SELECT * FROM tb_produto WHERE Cor = '".$id ."';");
        break;
}

if($sql->rowCount() > 0){
    foreach($sql->fetchAll() as $value){

        if($value['FlgFavorito'] == 'S'){
            $classe =  '"fas fa-heart"';
            $style  =  'style="color: #FF6347;"';
        }else{
            $classe =  '"far fa-heart"';
            $style  =  'style="color: #F5F5DC;"';
        }

        echo '

        <div class="card">
            <a href="#" onclick=iniciaModal("modal-produto","'.$value['idProduto'].'")>
                <img src="'.$value['FotoExibicao'].'" alt="'.$value['TituloProduto'].'">
                <div class="card-bottom">
                    <h4>'.$value['TituloProduto'].'</h4>
                    <div class="card-preco">
                        <span>R$ '.$value['Preco'].'</span>
                    </div>
                </div>
            </a>
            <i class='.$classe.' onclick="functionFavorito('.$value['idProduto'].')" '.$style.' id="'.$value['idProduto'].'"></i>                        
        </div>

        ';

    }
}

?>