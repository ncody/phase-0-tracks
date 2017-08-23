console.log("Hello");

var headers = document.getElementsByTagName('h1');
var header = headers[0];
header.style.border = "3px solid purple";

var coffeeImage = document.getElementById("coffeeimage");

coffeeImage.hidden = true;

function addCoffeeImage () {
  coffeeImage.hidden = false;
}

var coffee = document.getElementById('coffee');
coffee.addEventListener("mouseover", addCoffeeImage);

var espressoImage = document.getElementById("espressoimage");

espressoImage.hidden = true;

function addEspressoImage () {
  espressoImage.hidden = false;
}

var espresso = document.getElementById('espresso');
espresso.addEventListener("mouseover", addEspressoImage);
var teaImage = document.getElementById("teaimage");

teaImage.hidden = true;

function addTeaImage () {
  teaImage.hidden = false;
}

var tea = document.getElementById('tea');
tea.addEventListener("mouseover", addTeaImage);

var waterImage = document.getElementById("waterimage");

waterImage.hidden = true;

function addWaterImage () {
  waterImage.hidden = false;
}

var water = document.getElementById('water');
water.addEventListener("mouseover", addWaterImage);

var kombuchaImage = document.getElementById("kombuchaimage");

kombuchaImage.hidden = true;

function addKombuchaImage () {
  kombuchaImage.hidden = false;
}

var kombucha = document.getElementById('kombucha');
kombucha.addEventListener("mouseover", addKombuchaImage);