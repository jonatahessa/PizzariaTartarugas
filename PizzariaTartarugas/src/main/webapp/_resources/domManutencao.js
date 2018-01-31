function main() {
  var btnNovo = document.querySelector("#novo");
  var cancelaNovo = document.querySelector("#cancelanovo");
  var cancelaEditar = document.querySelector("#cancelaeditar");

  cancelaEditar.addEventListener("click", editarCancela);
  btnNovo.addEventListener("click", abrirNovo);
  cancelaNovo.addEventListener("click", novoCancela);
}

function abrirNovo() {
  document.querySelector("#nevoa").style.display = "block";
  document.querySelector("#janelanovo").style.display = "block";
}

function abrirEditar(form) {
  inputs = [];
  inputs = document.querySelectorAll(".inputseditar");
  var select = document.querySelector("#selecteditar");
  var optionPizza = document.createElement("option");
  var optionPizzaFogazza = document.createElement("option");
  var optionEsfiha = document.createElement("option");
  var optionFogazza = document.createElement("option");
  var optionBorda = document.createElement("option");
  var optionBebida = document.createElement("option");
  var optionPromo = document.createElement("option");
  optionPizza.innerHTML = "Pizza";
  optionPizza.setAttribute("value", "PIZZA");
  optionEsfiha.innerHTML = "Esfiha";
  optionEsfiha.setAttribute("value", "ESFIHA");
  optionFogazza.innerHTML = "Fogazza";
  optionFogazza.setAttribute("value", "FOGAZZA");
  optionPizzaFogazza.innerHTML = "Pizza/Fogazza";
  optionPizzaFogazza.setAttribute("value", "PIZZA/FOGAZZA");
  optionBorda.innerHTML = "Borda";
  optionBorda.setAttribute("value", "BORDA");
  optionBebida.innerHTML = "Bebida";
  optionBebida.setAttribute("value", "BEBIDA");
  optionPromo.innerHTML = "Promoção";
  optionPromo.setAttribute("value", "PROMOCAO");

  for (var i = 0; i < inputs.length; i++) {
    inputs[i].value = form[i].value;
  }
  if (form[4].value == 'PIZZA') {
    select.appendChild(optionPizza);
    select.appendChild(optionPizzaFogazza);
    select.appendChild(optionEsfiha);
    select.appendChild(optionFogazza);
    select.appendChild(optionBebida);
    select.appendChild(optionBorda);
    select.appendChild(optionPromo);

  } else if (form[4].value == 'ESFIHA') {
    select.appendChild(optionEsfiha);
    select.appendChild(optionPizza);
    select.appendChild(optionPizzaFogazza);
    select.appendChild(optionFogazza);
    select.appendChild(optionBebida);
    select.appendChild(optionBorda);
    select.appendChild(optionPromo);

  } else if (form[4].value == 'PIZZA/FOGAZZA') {
    select.appendChild(optionPizzaFogazza);
    select.appendChild(optionPizza);
    select.appendChild(optionEsfiha);
    select.appendChild(optionFogazza);
    select.appendChild(optionBebida);
    select.appendChild(optionBorda);
    select.appendChild(optionPromo);

  } else if (form[4].value == 'FOGAZZA') {
    select.appendChild(optionFogazza);
    select.appendChild(optionPizza);
    select.appendChild(optionPizzaFogazza);
    select.appendChild(optionEsfiha);
    select.appendChild(optionBebida);
    select.appendChild(optionBorda);
    select.appendChild(optionPromo);

  } else if (form[4].value == 'BORDA') {
    select.appendChild(optionBorda);
    select.appendChild(optionBebida);
    select.appendChild(optionPizza);
    select.appendChild(optionPizzaFogazza);
    select.appendChild(optionEsfiha);
    select.appendChild(optionFogazza);
    select.appendChild(optionPromo);

  } else if (form[4].value == 'BEBIDA') {
    select.appendChild(optionBebida);
    select.appendChild(optionBorda);
    select.appendChild(optionPizza);
    select.appendChild(optionPizzaFogazza);
    select.appendChild(optionEsfiha);
    select.appendChild(optionFogazza);
    select.appendChild(optionPromo);

  } else if (form[4].value == 'PROMOCAO') {
    select.appendChild(optionPromo);
    select.appendChild(optionBebida);
    select.appendChild(optionBorda);
    select.appendChild(optionPizza);
    select.appendChild(optionPizzaFogazza);
    select.appendChild(optionEsfiha);
    select.appendChild(optionFogazza);

  } else {
    select.appendChild(optionPizza);
    select.appendChild(optionPizzaFogazza);
    select.appendChild(optionPromo);
    select.appendChild(optionBebida);
    select.appendChild(optionBorda);
    select.appendChild(optionEsfiha);
    select.appendChild(optionFogazza);
  }


  document.querySelector("#nevoa").style.display = "block";
  document.querySelector("#janelaeditar").style.display = "block";

  return false;
}

function novoCancela() {
  var campos = [];
  campos = document.querySelectorAll(".inputsnovo");
  for (var i = 0; i < campos.length; i++) {
    campos[i].value = '';
  }
  document.querySelector("#nevoa").style.display = "none";
  document.querySelector("#janelanovo").style.display = "none";
}

function editarCancela() {
  var myNode = document.getElementById("selecteditar");
  while (myNode.firstChild) {
    myNode.removeChild(myNode.firstChild);
}
  document.querySelector("#nevoa").style.display = "none";
  document.querySelector("#janelaeditar").style.display = "none";
}



window.addEventListener("load", main);
