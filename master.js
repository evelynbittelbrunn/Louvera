$(function(){

    $(".filtro-cor").on("click", function(){

        let cor = this.id;

        $.ajax({
            url: "ajax/load.php?tipo=cor&filtro="+cor,
            success: function(result){
                $(".catalogo").html(result);
                
            },
            error: function(){
                $(".result").html("OI");
                
            }            
        });

    })

    $("#preco").on("change", function(){

        let preco = this.value;

        $.ajax({
            url: "ajax/load.php?tipo=preco&filtro="+preco,
            success: function(result){
                $(".catalogo").html(result);
                
            },
            error: function(){
                $(".result").html("OI");
                
            }            
        });

    })
})

