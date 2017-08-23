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