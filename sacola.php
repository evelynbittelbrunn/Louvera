<?php
    include('Controller/functionModal.php');
    include('Controller/geraPesquisaNovo.php');
    include('Controller/functionMontaListaProdutos.php');
    include('Controller/functionMontaListaCarrinho.php');
?>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,400;0,500;0,600;0,700;1,400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <title>Minha Sacola - LOUVERA</title>
</head>
<body>
    <div class="estrutura">
        <header>
            <div class="header-top">
                <svg aria-hidden="true" focusable="false" data-prefix="fal" data-icon="bars" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" class="svg-inline--fa fa-bars fa-w-14 fa-2x"><path fill="currentColor" d="M442 114H6a6 6 0 0 1-6-6V84a6 6 0 0 1 6-6h436a6 6 0 0 1 6 6v24a6 6 0 0 1-6 6zm0 160H6a6 6 0 0 1-6-6v-24a6 6 0 0 1 6-6h436a6 6 0 0 1 6 6v24a6 6 0 0 1-6 6zm0 160H6a6 6 0 0 1-6-6v-24a6 6 0 0 1 6-6h436a6 6 0 0 1 6 6v24a6 6 0 0 1-6 6z" class="menu"></path></svg>
                <span class="logo">Louvera</span>
                <div class="header-icone">
                    <span class="header-search">
                        <input type="text" name="" placeholder="Buscar por produto" id="">
                        <svg aria-hidden="true" focusable="false" data-prefix="fal" data-icon="search" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" class="svg-inline--fa fa-search fa-w-16 fa-2x"><path fill="currentColor" d="M508.5 481.6l-129-129c-2.3-2.3-5.3-3.5-8.5-3.5h-10.3C395 312 416 262.5 416 208 416 93.1 322.9 0 208 0S0 93.1 0 208s93.1 208 208 208c54.5 0 104-21 141.1-55.2V371c0 3.2 1.3 6.2 3.5 8.5l129 129c4.7 4.7 12.3 4.7 17 0l9.9-9.9c4.7-4.7 4.7-12.3 0-17zM208 384c-97.3 0-176-78.7-176-176S110.7 32 208 32s176 78.7 176 176-78.7 176-176 176z" class=""></path></svg>
                    </span>                    
                    <svg aria-hidden="true" focusable="false" data-prefix="fal" data-icon="heart" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" class="svg-inline--fa fa-heart fa-w-16 fa-2x"><path fill="currentColor" d="M462.3 62.7c-54.5-46.4-136-38.7-186.6 13.5L256 96.6l-19.7-20.3C195.5 34.1 113.2 8.7 49.7 62.7c-62.8 53.6-66.1 149.8-9.9 207.8l193.5 199.8c6.2 6.4 14.4 9.7 22.6 9.7 8.2 0 16.4-3.2 22.6-9.7L472 270.5c56.4-58 53.1-154.2-9.7-207.8zm-13.1 185.6L256.4 448.1 62.8 248.3c-38.4-39.6-46.4-115.1 7.7-161.2 54.8-46.8 119.2-12.9 142.8 11.5l42.7 44.1 42.7-44.1c23.2-24 88.2-58 142.8-11.5 54 46 46.1 121.5 7.7 161.2z" class=""></path></svg>
                    <svg aria-hidden="true" focusable="false" data-prefix="fal" data-icon="shopping-bag" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" class="svg-inline--fa fa-shopping-bag fa-w-14 fa-2x"><path fill="currentColor" d="M352 128C352 57.421 294.579 0 224 0 153.42 0 96 57.421 96 128H0v304c0 44.183 35.817 80 80 80h288c44.183 0 80-35.817 80-80V128h-96zM224 32c52.935 0 96 43.065 96 96H128c0-52.935 43.065-96 96-96zm192 400c0 26.467-21.533 48-48 48H80c-26.467 0-48-21.533-48-48V160h64v48c0 8.837 7.164 16 16 16s16-7.163 16-16v-48h192v48c0 8.837 7.163 16 16 16s16-7.163 16-16v-48h64v272z" class=""></path></svg>
                </div>
            </div>
            <div class="header-bottom">
                <div class="header-categoria">
                    <p>Novidades</p>
                    <p>Beleza</p>
                    <p>Perfumes</p>
                </div>
            </div>
        </header>
        <main class="main-sacola">
            <div class="container-sacola">
                <div class="produtos-sacola">
                    <h4>Minha sacola</h4>
                    <div class="sacola-produtos">
                        <?php echo montaListaCarrinho();?>
                    </div>
                </div>
                <div class="resumo-sacola">
                    <h4>Resumo da compra</h4>
                    <div class="resumo-descricao-sacola">
                        <div class="resumo-subtotal-sacola">
                            <div>
                                <span>Subtotal</span>
                                <span>Cupom</span>
                            </div>
                            <div>
                                <span id="subTotal"><?php echo somaPreco();?></span>
                                <?php if (somaPreco() >= 200){ ?>
                                    <span>R$ 20,00</span>
                                <?php }else{ ?>
                                    <span>R$ 00,00</span>
                                <?php } ?>
                            </div>
                        </div>
                        <div class="resumo-total-sacola">
                            <span>Total</span>
                            <?php if (somaPreco() >= 200){ ?>
                                <span>R$ <?php echo desconto();?></span>
                            <?php }else{ ?>
                                <span>R$ <?php echo somaPreco();?></span>
                            <?php } ?>
                        </div>
                        <div class="botao-resumo-sacola">
                            <button>Confirmar</button>
                        </div>
                    </div>
                </div>
            </div>
        </main>

        <!-- JQUERY -->
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

    <script>
        // TIRAR PRODUTO DA SACOLA
        function functionTirarSacola(id){

            $.ajax({
                
                url: "ajax/load-sacola.php?id="+id,
                success: function(result){
                    $(".sacola-produtos").html(result);                    
                },
                error: function(){
                    $(".sacola-produtos").html("OI");
                    
                }            
            });

        }

        function adicionarProduto(id,preco){

            // Pega o número do input text e grava na variável
            var numero = document.querySelector("#produto"+id).value;
            // A variável recebe mais um (click)
            numero++;
            // Devolve o valor para o input
            document.querySelector("#produto"+id).value = numero;
            // Multiplica o número pelo preço do produto
            var precoTotal = numero*preco;
            // Mostra o total 
            document.getElementById('id'+id).innerHTML=(Math.round(precoTotal * 100) / 100);

            // Pega o SubTotal da tela
            var subTotal = parseFloat(document.getElementById('subTotal').innerHTML);
            // Soma o valor do SubTotal com o preço do produto
            var somaSubTotal = subTotal + preco;
            // Devolve a soma para a tela
            document.getElementById('subTotal').innerHTML=(Math.round(somaSubTotal * 100) / 100);

        }

        function removerProduto(id,preco){

            var numero = document.querySelector("#produto"+id).value;

            if(numero > 1){

                numero--;

                document.querySelector("#produto"+id).value = numero;

                var valor = document.getElementById('id'+id).innerHTML;

                var precoTotal = valor-preco;

                document.getElementById('id'+id).innerHTML=(Math.round(precoTotal * 100) / 100);

                // Pega o SubTotal da tela
                var subTotal = parseFloat(document.getElementById('subTotal').innerHTML);
                // Soma o valor do SubTotal com o preço do produto
                var somaSubTotal = subTotal - preco;
                // Devolve a soma para a tela
                document.getElementById('subTotal').innerHTML=(Math.round(somaSubTotal * 100) / 100);
            }

        }

    </script>
</body>
</html>