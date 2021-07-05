<?php

function montaListaProdutos(){

    include('conexao.php');
    $sql = "SELECT * FROM tb_Produto;";

    $result = mysqli_query($conn,$sql);
    mysqli_close($conn);

    $lista = '';

    if (mysqli_num_rows($result) > 0) {

		$array = array();
		
		while ($linha = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
			array_push($array,$linha);
		}
    
        foreach ($array as $campo) {

            $lista .=  '<div class="card">'
                            .'<img src="img/produtos/livre.webp" alt="Casaco verde">'
                            .'<i class="far fa-heart"></i>'
                            .'<div class="card-bottom">'
                                .'<h4>CALÇA SLIM COM PREGAS E AMARRAÇÃO NA BARRA</h4>'
                                .'<div class="card-preco">'
                                    .'<span>R$'.$campo['Preco'].'</span>'
                                .'</div>'
                            .'</div>'
                        .'</div>';
        }

    }

    return $lista;
}

?>