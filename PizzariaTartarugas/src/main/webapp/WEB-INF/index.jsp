<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="./_resources/estiloPaginaInicial.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Norican" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Kalam:700" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
        <link rel="shortcut icon" href="./_imagens/favicon1.ico" />
        <script type="text/javascript" src="./_resources/domPaginaInicial.js"></script>
        <title>Pizzaria Pazza</title>
    </head>
    <body>
        <section class="container-fluid">
            <div id="menu" class="row">
                <ul class="col-12">
                    <li><button class="font-kalam" type="button" id="buttonhome">Home</button></li>
                    <li><button class="font-kalam" type="button" id="buttonnossacasa">Nossa Casa</button></li>
                    <c:if test="${promocoes != null}">
                      <li><button type="button" class="font-kalam" id="buttonpromocoes">Promoções</button></li>
                    </c:if>
                    <li><button class="font-kalam" type="button" id="buttoncardapio">Cardápio</button></li>
                    <c:if test="${novidades != null}">
                      <li><button class="font-kalam" type="button" id="buttonnovidades">Novidades</button></li>
                    </c:if>
                    <li><button class="font-kalam" type="button" id="buttonlocalizacao">Localização</button></li>
                    <li><button class="font-kalam" type="button" id="buttoncontato">Contato</button></li>
                </ul>
            </div>

            <div class="row">
                <div id="pazza-first" class="col-12">
                    <h2 class="text-center font-subway">Pizzaria</h2>
                    <h1 class="text-center font-subway">Pazza</h1>
                    <h4 class="text-center font-norican">Forno à Lenha</h4>
                </div>
            </div>

            <div class="row">
              <div id="img-full" class="col-12">
                <img id="imagem-pizza-1" class="img-fluid" src="./_imagens/calabresa.jpg" alt="imagem de uma pizza de calabresa">
              </div>
            </div>

            <div id="faixa-contato" class="row">
                <div class="col-12">
                    <h2 class="text-center">
                        <a href="tel:01156253599">5625-3599</a> / <a href="tel:01156219840">5621-9840</a> /
                        <a href="tel:01156252285">5625-2285</a> / <a href="tel:01156227264">5622-7264</a>
                    </h2>
                    <h2 class="text-center">
                        <a href="tel:011953470086">95347-0086</a>
                        <img class="col-1" src="./_imagens/whatsapp.png" alt="whatsapp">
                    </h2>
                </div>
            </div>

            <div class="row" id="nossacasa">
                <div id="content-nossacasa" class="col-xs-12 col-sm-12 col-lg-10 sessoes-estilo sessoes-posicao">
                    <h1 class="titulos font-kalam">Nossa Casa</h1>
                    <hr/>

                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-lg-3">
                            <img class="img-fluid" src="./_imagens/logoPazza.png" alt="logo da pizzaria">
                        </div>

                        <div class="col-xs-12 col-sm-12 col-lg-8">
                            <img class="img-fluid" src="./_imagens/frango.jpg" alt="imagem de uma pizza de frango com catupiri">
                        </div>
                    </div>

                    <div id="fachada" class="col-12">
                        <p>A Pizzaria Pazza vem desde 2003, unindo a tradição da pizza com a sofisticação informal. E não parou de crescer, evoluir, adotando o lema: “Atender à expectativa dos clientes” como sinônimo de qualidade.</p>
                        <p>O investimento constante nas instalações, produtos e serviços, faz com que a PIZZARIA PAZZA seja considerada um novo clássico, na terra das pizzarias.</p>
                        <p>Todos os recursos são colocados à disposição dos funcionários, para que a filosofia desde a fundação continue sempre a ser: SERVIR PIZZAS COM DEDICAÇÃO, CARINHO E ALEGRIA.</p>
                    </div>
                </div>
            </div>

            <c:if test="${promocoes != null}">
            <div class="row" id="sessaopromocoes">
                <div class="col-xs-12 col-sm-12 col-lg-10 sessoes-estilo sessoes-posicao">
                    <h1 class="titulos font-kalam">Promoções</h1>
                    <hr/>
                    <c:forEach var="promocao" items="${promocoes}">
                        <div class="row justify-content-center">
                            <div class="col-xs-12 col-sm-12 col-lg-6 text-center border border-danger paineis">
                                <h2 class="text-danger font-kalam">${promocao.nome}</h2>
                                <h3 class="text-dark">${promocao.descricao}</h3>
                                <h2 class="text-success">${promocao.preco}</h2>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
          </c:if>


            <div class="row" id="sessaocardapio">
                <div class="col-xs-12 col-sm-12 col-lg-10 sessoes-estilo sessoes-posicao">
                    <h1 class="titulos font-kalam">Cardápio</h1>
                    <hr/>

                    <div class="col-12">
                        <button type="button" class="botoes-cardapio font-kalam" data-toggle="modal" data-target="#modal-pizzas">
                            <h3>Clique para abrir as Pizzas Salgadas</h3>
                        </button>
                    </div>

                    <div class="col-12">
                        <button type="button" class="botoes-cardapio font-kalam" data-toggle="modal" data-target="#modal-doces">
                            <h3>Clique para abrir as Pizzas Doces</h3>
                        </button>
                    </div>

                    <div class="col-12">
                        <button type="button" class="botoes-cardapio font-kalam" data-toggle="modal" data-target="#modal-calzones">
                            <h3>Clique para abrir as Calzones</h3>
                        </button>
                    </div>
                </div>
            </div>

            <c:if test="${novidades != null}">
            <div class="row" id="sessaonovidades">
                <div class="col-xs-12 col-sm-12 col-lg-10 sessoes-estilo sessoes-posicao">
                    <h1 class="titulos font-kalam">Novidade</h1>
                    <hr/>
                    <div class="row justify-content-center">
                        <c:forEach var="novidade" items="${novidades}">
                            <div class="col-xs-12 col-sm-12 col-lg-6 text-center border border-danger paineis">
                                <h2 class="text-danger font-kalam">${novidade.nome}</h2>
                                <h3 class="text-dark">${novidade.descricao}</h3>
                                <h2 class="text-success">${novidade.preco}</h2>
                            </div>
                        </c:forEach>
                    </div>
                    <h4 class="text-center">Aceitamos encomendas para festas todos os dias, das 9h à 0h.</h4>
                </div>
            </div>
          </c:if>

            <div class="row" id="sessaolocalizacao">
                <div class="col-xs-12 col-sm-12 col-lg-10 sessoes-estilo sessoes-posicao">
                    <h1 class="titulos font-kalam">Localização</h1>
                    <hr/>
                    <h3 class="text-center">Av. Ângelo Cristianini, 1163 - Cidade Júlia, São Paulo - SP,</h3>
                    <iframe class="col-12" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2583.5177024746695!2d-46.64430982316592!3d-23.688622458678832!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce45173f10b00b%3A0x4e65473a31aa5b39!2sPizzaria+Pazza!5e0!3m2!1spt-BR!2sbr!4v1516401449164" height="400px" allowfullscreen></iframe>
                </div>
            </div>

            <footer id="sessaocontato" class="row">
                <div class="col-xs-12 col-sm-12 col-lg-10 sessoes-posicao">
                    <h1 class="titulos font-kalam">Contato</h1>
                    <hr/>
                    <h2 class="text-center display-4">
                        <a href="tel:01156253599">5625-3599</a><br>
                        <a href="tel:01156219840">5621-9840</a><br>
                        <a href="tel:01156252285">5625-2285</a><br>
                        <a href="tel:01156227264">5622-7264</a><br>
                        <a href="tel:011953470086">95347-0086</a>
                        <img class="col-1" src="./_imagens/whatsapp.png" alt="whatsapp">
                    </h2>

                    <p class="text-center">De Domingo à Quinta das 18h às 00h<br/>
                        Sexta e Sábado das 18h à 01h</p>
                    <p class="text-center">Copyright (c) Pizzaria Pazza Copyright Holder All Rights Reserved.</p>
                    <p class="text-center">Developed by Jonata Hessa</p>
                </div>
            </footer>
        </section>

        <div class="modal fade" id="modal-pizzas" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Pizzas</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <ul class="col-12 cardapios">
                            <c:forEach var="pizza" items="${pizzas}">
                                <li class="menu-category titulopreco">
                                    <div class="">
                                        <h5 class="titulo">${pizza.codigo} - ${pizza.nome}</h5>
                                        <h5 class="preco">${pizza.preco}</h5>
                                        <p class="descricao">${pizza.descricao}</p>
                                    </div>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar Cardapio</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="modal-doces" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Pizzas Doces</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <ul class="col-12 cardapios">
                            <c:forEach var="doce" items="${doces}">
                                <li class="menu-category titulopreco">
                                    <div class="">
                                        <h5 class="titulo">${doce.codigo} - ${doce.nome}</h5>
                                        <h5 class="preco">${doce.preco}</h5>
                                        <p class="descricao">${doce.descricao}</p>
                                    </div>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar Cardapio</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal fade" id="modal-calzones" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Calzones</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <ul class="col-12 cardapios">
                            <c:forEach var="calzone" items="${calzones}">
                                <li class="menu-category titulopreco">
                                    <div class="">
                                        <h5 class="titulo">${calzone.codigo} - ${calzone.nome}</h5>
                                        <h5 class="preco">${calzone.preco}</h5>
                                        <p class="descricao">${calzone.descricao}</p>
                                    </div>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar Cardapio</button>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
