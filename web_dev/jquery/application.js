window.onload = function () {
  alert("Welcome to my page :)");
}

$('h1').text("Woo jQuery Practice!");

$(document).ready(function() {
  $('#change').on('click', function() {
    var newWords= $('<p>Netflix, Google, Microsoft, etc.</p>');
    $('div').append(newWords);
    $('#change').remove();
});
});
