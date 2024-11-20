<?php

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
    <div class="logo-assistech"><a href="pagina_principal copy.html">ASSISTECH</a></div>
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
    <div class="menu " >
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <ul class="navbar-nav">
            <li><a href="notebook.html">NOTEBOOK</a></li>
            <li><a href="celular.html">CELULAR</a></li>
            <li><a href="computador.html">COMPUTADOR</a></li>
            <li><a href="tablet.html">TABLET</a></li>
            <li><a href="memoria.html">MEMÓRIA RAM</a></li>
            <li><a href="placa.html">PLACA DE VÍDEO</a></li>
            <li><a href="hd.html">HD</a></li>
            <li> <a href="servicos.html">ASSISTÊNCIA TÉCNICA</a></li>
            <li> <a href="cadastro.html">CADASTRE-SE</a></li>
            <li><a href="faleconosco.html">FALE CONOSCO</a></li>
            
        </ul>
    </nav>
    </div>
    <body>
    <div class="titulo">
        <h1>SEJA BEM VINDO À ASSISTECH</h1>
    <h2>Tudo o que você precisa encontra aqui!</h2>
   <p><h2>Profissionais qualificados para prestar a melhor assistência técnica e produtos da melhor qualidade! <br>

    Temos uma promoção imperdível! Realizando o <strong>cadastro</strong>, você tem <strong>15% de desconto </strong> em nossos serviços! <br>
    
    Cadastre-se já e tenha o melhor serviço de manutenção do estado!</h2></p> <br>

<h3>Horário de atendimento: Segunda a Sexta das 8hs às 18hs | Sábado das 09hs às 13hs <br>
Av. Paulista, 3030 - São Paulo-SP</h3>

    <main class="container">
        <!-----------------------------------PRODUTOS---------------------------------------------------------->
        
        <div class="produto card ">
            <form action="filtros/criar.php" method="post">
            <div class="card-body">
                <img src="imagens/notebook.jpg" alt="Notebook ASUS VivoBook Go 15" class="rounded mx-auto d-block">
                <p class="descricao">Notebook ASUS VivoBook Go 15 E1504GA-NJ447
                Intel Core i3 4GB RAM SSD 256GB 15,6" Full HD Linux 90NB0ZT1-M00PS0</p>
                <br><p class="preco">R$ 3.497,90</p>
                <br><p><button class="btn btn-primary" type="submit" name="addcarrinho">Adicionar ao carrinho 🛒 </button></p>
            </div>
            </form>
        </div>

    </main>


    </body>

<footer>
    <p>Copyright 2024 - Todos os direitos são reservados</p>
</footer>
</html>

