<?php

function somaPreco(){

    $qtd = 0;

    include('conexao.php');
    $sql = "SELECT SUM(Preco) AS Qtd FROM tb_Produto WHERE Carrinho = 'S';";
    //var_dump($sql);
    //die();

    $result = mysqli_query($conn,$sql);
    mysqli_close($conn);
  
    if (mysqli_num_rows($result) > 0) {	

		$lista = array();
		
		while ($linha = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
			array_push($lista,$linha);
		}

        foreach ($lista as $campo) {			
            $qtd = $campo['Qtd'];            
        }

    }
    return substr($qtd, 0, 5);
}

function desconto(){

  if(somaPreco() >= 200){
    $formula = somaPreco() - 20;
  }

 return $formula;

}

function montaListaCarrinho(){

    include('conexao.php');
    $sql = "SELECT * FROM tb_Produto WHERE Carrinho = 'S';";

    $result = mysqli_query($conn,$sql);
    mysqli_close($conn);

    $carrinho = '';

    if (mysqli_num_rows($result) > 0) {

		$array = array();
		
		while ($linha = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
			array_push($array,$linha);
		}
    
        foreach ($array as $campo) {

            $carrinho .=
            
                    '<div class="card-produto-sacola">'
                        .'<img src="'.$campo['FotoExibicao'].'" alt="">'
                        .'<div class="descricao-produto-sacola">'
                            .'<div class="texto-sacola">'
                                .'<p>'.$campo['TituloProduto'].'</p>'
                                .'<p id="id'.$campo['idProduto'].'">'.$campo['Preco'].'</p>'
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

    }else{

        echo 'Oi';
    }

    return $carrinho;
}


?>