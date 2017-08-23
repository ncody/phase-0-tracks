console.log("Hello");

var coffeeimage = document.getElementById("coffeeimage");
coffeeimage.hidden = true;

var headers = document.getElementsByTagName('h1');
var header = headers[0];
header.style.border = "3px solid purple";

function addDrinkImages () {
 var coffee = document.getElementById('coffee');
 var coffeeimage = document.getElementById("coffeeimage");
coffeeimage.hidden = false;
}

var coffee = document.getElementById('coffee');
coffee.addEventListener("mouseover", addDrinkImages);