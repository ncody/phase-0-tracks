var colors = ["blue", "green", "red", "yellow"];
var names = ["Ed", "Secretariat", "Moon Shadow", "Buttercup" ];

//console.log(colors);
//colors.push("orange");
//console.log(colors);

//console.log(names);
//names.push("Seabiscut");
//console.log(names);


//var horses = {};
//for (var i = 0; i < names.length; i++) {
//  horses[names[i]] = colors[i];
//}

//console.log(horses);

function createObject(keyArray, valueArray) {
  var horses = {}
  if (keyArray.length == valueArray.length) {
    for (var i = 0; i < keyArray.length; i++) {
      horses[keyArray[i]] = valueArray[i];
    }
  }
  return horses
}

//console.log(createObject(names, colors))


//var car = {type: 'truck', color: 'silver', heatedSeats: true};

function Car(type, color, heatedSeats) {
  console.log("New car:", this);
  this.type = type;
  this.color = color;
  this.heatedSeats = heatedSeats;

  console.log("Car initialization complete")

  this.driveAway = function() { console.log("Car speeds away"); };
}

var newCar = new Car("van", "red", true);
console.log(newCar);
newCar.driveAway();

var car2 = new Car("car", "yellow", false);
console.log(car2.type);
car2.driveAway();
