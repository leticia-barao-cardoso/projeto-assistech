<h2?php

ob_start();
require('config.php')

?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/est.css">
    <link href="css/bootstrap.min.css" rel="stylesheet" >
    <title>Bem vindo à Assistech</title>
</head>
    <header class="header">
    <div class="logo-assistech"><a href="index.php">ASSISTECH</a></div>
    <div class="search-bar">
        <input type="text" placeholder="O que deseja?" aria-label="Search">
    </div>
    <div class="logo">BUSCA</div>
    <div class="header-icons">
        <div class="icon"><a href="novoquipe"></a>📍Cadaster seu produto</div>
        <div class="icon"><a href="login"></a>👤 Login</div>
        <div class="icon">❤️ Favoritos</div>
        <div class="icon">
            <p>
                <a class="btn btn-primary" data-toggle="collapse" href="cart.php" role="button" aria-expanded="false" aria-controls="multiCollapseExample1">
                🛒 Carrinho</a>
            </p>
            <div class="row">
                <div class="col">
                    <div class="collapse multi-collapse" id="multiCollapseExample1">
                    <div class="card card-body">
                        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident.
                    </div>
                    </div>
                </div>
            </div>
    </div>
   
    </header>
    <body>
        <main class="container">
        <!-------------------------------- Inicio do PRODUTO ------------------------------------------->
            <div class="card" style="width: 50rem;">
            <div class="card-body hstack gap-3">
                <img src="imagens/notebook.jpg" alt="Notebook ASUS VivoBook Go 15" class="img-thumbnail ">
                <p class="card-title">Notebook ASUS VivoBook Go 15 E1504GA-NJ447
                Intel Core i3 4GB RAM SSD 256GB 15,6" Full HD Linux 90NB0ZT1-M00PS0</p>
                <p class="card-text">Preço: 1500.90</p>
                <p class="card-text">Quantidade: 1</p>
                <form action="filtros/excluir.php" method="post">
                    <input type="hidden" name="id_produto" value="">
                    <button type="submit" class="btn btn-danger">Remover</button>
                </form>
                
            </div>
            </div>
        <!-------------------------------- fim do PRODUTO ------------------------------------------->

        <!-------------------------------- Rodapé ------------------------------------------->
        <div class="card text-center" style="width: 50rem;">
            <div class="card-body">
                <h3 class="card-title">Carrinho vazio</h3>
                <a href="#" class="btn btn-primary">Adicionar itens ao carrinho</a>
            </div>
            </div>
        <!-------------------------------- Rodapé ------------------------------------------->

        <!-------------------------------- Rodapé ------------------------------------------->
            <div class="card text-center" style="width: 50rem;">
            <div class="card-body">
                <h3 class="card-title">Total</h3>
                <br><h5 >1200.90</h5><br>
                <a href="#" class="btn btn-primary">Adicionar outros itens ao carrinho</a>
                
            </div>
            </div>
        <!-------------------------------- Rodapé ------------------------------------------->
        </main>
    </body>

<footer>
    <p>Copyright 2024 - Todos os direitos são reservados</p>
</footer>
</html>

