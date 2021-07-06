<?php

function montaListaProdutos($pesquisa){

    include('conexao.php');
    $sql = "SELECT * FROM tb_Produto WHERE TituloProduto LIKE '".$pesquisa."%' OR TituloProduto LIKE '%".$pesquisa."%'";
    //var_dump($sql);
    //die();

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
                                .'<img src="'.$campo['FotoExibicao'].'" alt="Casaco verde">'
                                .'<i class="far fa-heart"></i>'
                                .'<div class="card-bottom">'
                                    .'<h4>'.$campo['TituloProduto'].'</h4>'
                                    .'<div class="card-preco">'
                                        .'<span>R$'.$campo['Preco'].'</span>'
                                    .'</div>'
                                .'</div>'
                            .'</div>';
        }

    }else{

        $lista .=  '<div class="mensagem">'
                            .'<p>Desculpe, nenhuma pesquisa disponível! Tente buscar uma outra vez.</p>'
                            .'<h3>Dica: tente pesquisar pelo nome do produto. :)</h3>'
                    .'</div>';

    }

    return $lista;
}

?>