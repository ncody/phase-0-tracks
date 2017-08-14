//create a function that takes a list as the parameter
//the function will find the length of each element in the list
//it will print out the element with the longest length


function sort(array) {
  var word = null;
  var length = 0;
  for (var i = 0; i < array.length; i++) {
    if (length < array[i].length) {
          length = array[i].length;
          word = array[i];
        }
    }
    return word;
}


function match(first, second) {
  for (key in first) {
    var match_first = (key, first[key])
  }
  for (key in second) {
    var match_second = (key, second[key])
}
  if (match_first != match_second) {
    return false;
  }
  else {
    return true;
  }
}

function length_string(x) {
  var word = "";
  var alphabet = "abcdefghijklmnopqrstuvwxyz";

  for (var i = 0; i < x; i++){
    word += alphabet.charAt(Math.floor(Math.random() * alphabet.length));
  }
  return word;
}

console.log(length_string(6))
console.log(length_string(7))

//I can't figure out how to make my function say true if the matching key-value pair are not at the same index in the object (example commented out below results in false even though both objects contain a: "dog")
//console.log(match({a: "dog", c: "cow"}, {d: "dog", a: "dog"}))
console.log(match({a: "dog"}, {a: "dog"}))
console.log(match({a: "bird"}, {c: "dog"}))

console.log(sort(["elephant", "hello", "dog"]))
console.log(sort(["hello","elephant", "dog"]))