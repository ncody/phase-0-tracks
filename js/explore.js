// create a function that takes a string as a parameter
//find the length of the string
//for each letter in the string, starting at the last letter (-1 index), create a new string adding each letter one at a time until you add the 0 index
//print new string

function reverse(string) {
  var newstring = "";
  for (var i = string.length -1; i >= 0; i--) {
    newstring += string[i];
  }
  return newstring;
}


if (1==1) {
  console.log(reverse("hello"));
}




