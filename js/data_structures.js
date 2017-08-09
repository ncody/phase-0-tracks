var colors = ["blue", "green", "red", "yellow"];
var names = ["Ed", "Secretariat", "Moon Shadow", "Buttercup" ];

//console.log(colors);
colors.push("orange");
//console.log(colors);

//console.log(names);
names.push("Seabiscut");
//console.log(names);


var horses = {};
for (var i = 0; i < names.length; i++) {
  horses[names[i]] = colors[i];
}

console.log(horses);