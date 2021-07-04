<?php

function mostrarModal($idProduto){

    $modal = '';

    require 'connection.php';

    $sql = $pdo->query("SELECT * FROM tb_produto WHERE idProduto ".$idProduto.";");

    if($sql->rowCount() > 0){
        foreach($sql->fetchAll() as $value){
            
            $modal .=
            '
            <div id="modal-produto" class="modal-container">
                <div class="modal">
                    <button class="fechar">X</button>
                    <div class="modal-corpo">
                        <div class="fotos-produto-modal">
                            <div class="coluna-fotos-produto-modal">
                                <img src="'.$value['FotoGPrimeira'].'" onmouseover="img01()" alt="">
                                <img src="'.$value['FotoGSegunda'].'" onmouseover="img02()" alt="">
                                <img src="'.$value['FotoGTerceira'].'" onmouseover="img03()" alt="">
                            </div>
            
                            <img src="'.$value['FotoGPrimeira'].'" id="trocarImg" alt="">
                        </div>
                        <div class="informacoes-produto-modal">
                            <div class="corpo-informacoes-produto-modal">
                                <h3>'.$value['TituloProduto'].'</h3>     
                                <div class="preco-modal">
                                    <span>'.$value['Preco'].'</span>
                                    &nbsp                            
                                    <span>2x R$ 34,95</span>
                                </div>         
                                
                                <p>Cor: <b>ROSA CLARO</b></p>

                                <p>Capacidade: <b>200 ML</b></p>
                                
                                <i class="far fa-heart" onclick="functionFavorito()" id="um"></i>
                                <span>Gostar disso</span>

                                <p>'.$value['Descricao'].'</p>

                                
                                <button>Comprar</button>
                            </div>
                            
                        </div>
                    </div>            
                </div>

            </div>
            ';
        }
    }

    return $modal;

}

?>