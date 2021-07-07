<?php
  include_once("conexao.php");

  if (isset($_POST['upload'])) {
  
  	$image  = $_FILES['nFotoExibicao']['name'];
	$image2 = $_FILES['nFotoSegunda']['name'];
	$image3 = $_FILES['nFotoTerceira']['name'];
	$image4 = $_FILES['nFotoQuarta']['name'];

  	$tituloProduto = $_POST['nTituloProduto'];
	$descricao 	   = $_POST['nDescricao'];
	$qtd 	  	   = $_POST['nQuantidade'];
	$preco 	  	   = $_POST['nPreco'];
	$cor 	  	   = $_POST['nCor'];
	$tamanho 	   = $_POST['nTamanho'];
	$marca 	       = $_POST['nMarca'];
	$idTipoProduto = $_POST['nIdTipoProduto'];
	$flgFavorito   = 'N';
	$carrinho      = 'N';

  	$_UP['pasta'] = 'imagens/produtos/'.$image.'/';
	$_UP['pasta'] = 'imagens/produtos/'.$image2.'/';
	$_UP['pasta'] = 'imagens/produtos/'.$image3.'/';
	$_UP['pasta'] = 'imagens/produtos/'.$image4.'/';
	
  	$sql = 'INSERT INTO tb_Produto (idTipoProduto, '
	  		.'TituloProduto, Descricao, FotoExibicao, '
			.' FotoGPrimeira, FotoGSegunda, FotoGTerceira, '
			.' FotoPequena, Quantidade, Preco, Cor, Tamanho, '
			.' Marca, FlgFavorito, Carrinho) '
			.'VALUES ('
			.'"'.$idTipoProduto.'",' 
			.'"'.$tituloProduto.'",' 
			.'"'.$descricao.'",' 
			.'"img/produtos/'.$image.'",' 
			.'"img/produtos/'.$image.'",' 
			.'"img/produtos/'.$image2.'",'
			.'"img/produtos/'.$image3.'",' 
			.'"img/produtos/'.$image4.'",'
			.'"'.$qtd.'",'
			.'"'.$preco.'",' 
			.'"'.$cor.'",'
			.'"'.$tamanho.'",' 
			.'"'.$marca.'",' 
			.'"'.$flgFavorito.'",'
			.'"'.$carrinho.'");';
	
	
  	mysqli_query($conn, $sql);

	$_UP['pasta'] = '../img/produtos/';
	mkdir($_UP['pasta'], 0777);
	
  	move_uploaded_file($_FILES['nFotoExibicao']['tmp_name'], $_UP['pasta'].$image);
	move_uploaded_file($_FILES['nFotoSegunda']['tmp_name'], $_UP['pasta'].$image2);
	move_uploaded_file($_FILES['nFotoTerceira']['tmp_name'], $_UP['pasta'].$image3);
	move_uploaded_file($_FILES['nFotoQuarta']['tmp_name'], $_UP['pasta'].$image4);

  }
?>

<html>
<div>
  	<a href="../cadastro.php" title="Retornar">
        <span>Voltar</span>
    </a>
</div>
</html>