//create a function that takes an array as the parameter
//the array will be broken up into individual words and find the length of each word


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

console.log(sort(["elephant", "hello", "dog"]))
console.log(sort(["hello","elephant", "dog"]))