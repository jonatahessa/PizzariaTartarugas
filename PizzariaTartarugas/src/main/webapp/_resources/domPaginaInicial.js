function main() {
  document.querySelector("#buttonhome").addEventListener("click", home);
  document.querySelector("#buttonpromocoes").addEventListener("click", promocao);
  document.querySelector("#buttonnossacasa").addEventListener("click", nossacasa);
  document.querySelector("#buttoncardapio").addEventListener("click", cardapio);
  document.querySelector("#buttonnovidades").addEventListener("click", novidades);
  document.querySelector("#buttonlocalizacao").addEventListener("click", localizacao);
  document.querySelector("#buttoncontato").addEventListener("click", scrollcontato);
}

function home() {
  window.scrollTo(0,0);
}

function nossacasa() {
  document.querySelector("#nossacasa").scrollIntoView();
}

function promocao() {
  document.querySelector("#sessaopromocoes").scrollIntoView();
}

function cardapio() {
  document.querySelector("#sessaocardapio").scrollIntoView();
}

function novidades() {
  document.querySelector("#sessaonovidades").scrollIntoView();
}

function localizacao() {
  document.querySelector("#sessaolocalizacao").scrollIntoView();
}

function scrollcontato() {
  document.querySelector("#sessaocontato").scrollIntoView();
}

window.addEventListener("load", main);
