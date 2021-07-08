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

            if($campo['FlgFavorito'] == 'S'){
                $classe =  '"fas fa-heart"';
                $style  =  'style="color: #FF6347;"';
            }else{
                $classe =  '"far fa-heart"';
                $style  =  'style="color: #F5F5DC;"';
            }

            $lista .= 
            
            '<div class="card">'
                .'<a href="#" onclick=iniciaModal("modal-produto","'.$campo['idProduto'].'")>'
                    .'<img src="'.$campo['FotoExibicao'].'" alt="'.$campo['TituloProduto'].'">'
                    .'<div class="card-bottom">'
                        .'<h4>'.$campo['TituloProduto'].'</h4>'
                        .'<div class="card-preco">'
                            .'<span>R$ '.$campo['Preco'].'</span>'
                        .'</div>'
                    .'</div>'
                .'</a>'
                .'<i class='.$classe.' onclick="functionFavorito('.$campo['idProduto'].')" '.$style.' id="'.$campo['idProduto'].'"></i>'                
            .'</div>';

        }

    }else{

        $lista .=  '<div class="card">'
                        .'<img src="banner.png">'
                    .'</div>'
                    .'<div class="mensagem">'
                        .'<div style="background-image: url(banner.png); width:200px; height:200px;"></div>'
                        .'<p>Desculpe, nenhuma pesquisa disponível! Tente buscar uma outra vez.</p>'
                        .'<h3>Dica: tente pesquisar pelo nome do produto. :)</h3>'
                    .'</div>';

    }

    return $lista;
}

function montaListaProdutosFavoritos(){

    include('conexao.php');
    $sql = "SELECT * FROM tb_Produto WHERE FlgFavorito = 'S'";
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

            $lista .= 
            
            '<div class="card">'
                .'<a href="#" onclick=iniciaModal("modal-produto","'.$campo['idProduto'].'")>'
                    .'<img src="'.$campo['FotoExibicao'].'" alt="'.$campo['TituloProduto'].'">'
                    .'<div class="card-bottom">'
                        .'<h4>'.$campo['TituloProduto'].'</h4>'
                        .'<div class="card-preco">'
                            .'<span>R$ '.$campo['Preco'].'</span>'
                        .'</div>'
                    .'</div>'
                .'</a>'
                .'<a href="#" onclick="functionDesfavoritar('.$campo['idProduto'].')" id="'.$campo['idProduto'].'"><svg class="close" aria-hidden="true" style="height: 1em; right: 4%;" focusable="false" data-prefix="fal" data-icon="times" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512" class="svg-inline--fa fa-times fa-w-10 fa-2x"><path class="close" fill="currentColor" d="M193.94 256L296.5 153.44l21.15-21.15c3.12-3.12 3.12-8.19 0-11.31l-22.63-22.63c-3.12-3.12-8.19-3.12-11.31 0L160 222.06 36.29 98.34c-3.12-3.12-8.19-3.12-11.31 0L2.34 120.97c-3.12 3.12-3.12 8.19 0 11.31L126.06 256 2.34 379.71c-3.12 3.12-3.12 8.19 0 11.31l22.63 22.63c3.12 3.12 8.19 3.12 11.31 0L160 289.94 262.56 392.5l21.15 21.15c3.12 3.12 8.19 3.12 11.31 0l22.63-22.63c3.12-3.12 3.12-8.19 0-11.31L193.94 256z" class=""></path></svg></a>'  
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