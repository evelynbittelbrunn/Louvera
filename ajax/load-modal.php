<?php

require 'connection.php';

$id   = $_GET['id'];

$sql = $pdo->query("SELECT * FROM tb_produto WHERE idProduto = ".$id.";");

if($sql->rowCount() > 0){
    foreach($sql->fetchAll() as $value){
        echo '

        <div class="modal">
            <button class="fechar">X</button>
            <div class="modal-corpo">
                <div class="fotos-produto-modal">
                    <div class="coluna-fotos-produto-modal">
                        <img src="'.$value['FotoGPrimeira'].'" onmouseover=img01("'.$value['FotoGPrimeira'].'") alt="">
                        <img src="'.$value['FotoGSegunda'].'" onmouseover=img02("'.$value['FotoGSegunda'].'") alt="">
                        <img src="'.$value['FotoGTerceira'].'" onmouseover=img03("'.$value['FotoGTerceira'].'") alt="">
                    </div>
    
                    <img src="'.$value['FotoGPrimeira'].'" id="trocarImg" alt="">
                </div>
                <div class="informacoes-produto-modal">
                    <div class="corpo-informacoes-produto-modal">
                        <h3>'.$value['TituloProduto'].'</h3>     
                        <div class="preco-modal">
                            <span>R$ '.$value['Preco'].'</span>
                            &nbsp                            
                            <span>2x '.($value['Preco']/2).'</span>
                        </div>         
                        
                        <p>Cor: <b>'.$value['Cor'].'</b></p>

                        <p>Capacidade: <b>'.$value['Tamanho'].'</b></p>
                        
                        <i class="far fa-heart" onclick="functionFavorito('.$value['idProduto'].')" id="'.$value['idProduto'].'"></i>
                        <span>Gostar disso</span>

                        <p>'.$value['Descricao'].'</p>
                        
                        <button onclick="comprarProduto('.$value['idProduto'].')">Comprar</button>
                    </div>
                    
                </div>
            </div>            
        </div>

        ';

    }
}

?>