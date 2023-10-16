<?php 
	session_start();
  if ($_SESSION['idTipo'] != 1) {
      header('location: index.php');
  }
?>
<!DOCTYPE html>
<html>
<head>
<title>Cadastro de Produtos</title>
</head>
<body>
<div id="content">
  <form method="POST" action="Controller/cadastroProdutos.php" enctype="multipart/form-data">
    <label for="nIdTipoProduto">Selecione o tipo de produto:</label>
    <select name="nIdTipoProduto">
        <option value="1">Óleo</option>
        <option value="2">Perfume</option>
        <option value="3">Sabonete</option>
        <option value="4">Creme</option>
    </select>

  	<div>
      <label>Foto Exibição:</label> 
  	  <input type="file" name="nFotoExibicao">
  	</div>

	<div>
      <label>Foto Segunda:</label>
  	  <input type="file" name="nFotoSegunda">
  	</div>

	<div>
      <label>Foto Terceira:</label>
  	  <input type="file" name="nFotoTerceira">
  	</div>

    <div>
      <label>Foto Pequena:</label>
  	  <input type="file" name="nFotoQuarta">
  	</div><p>

  	<div>
      <label>Título:</label><p>
      <input type="text" name="nTituloProduto">
  	</div>

    <div>
      <label>Descrição:</label><p>
      <textarea name="nDescricao"></textarea>
  	</div>

    <div>
      <label>Quantidade:</label><p>
      <input type="number" name="nQuantidade">
  	</div>

    <div>
      <label>Preço:</label><p>
      <input type="number" name="nPreco" step="0.02">
  	</div>

    <div>
        <label>Cor:</label><p>
        <select name="nCor">
            <option value="Rosa">Rosa</option>
            <option value="Azul">Azul</option>
            <option value="Amarelo">Amarelo</option>
            <option value="Roxo">Roxo</option>
            <option value="Verde">Verde</option>
            <option value="Laranja">Laranja</option>
        </select>
    </div>

    <div>
      <label>Tamanho:</label><p>
      <input type="text" name="nTamanho">
  	</div>

    <div>
      <label>Marca:</label><p>
      <input type="text" name="nMarca">
  	</div>

  	<div>
  		<button type="submit" name="upload">Enviar Produto</button>
  	</div>
  </form>
</div>
</body>
</html>