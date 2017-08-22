window.onload = function () {
  alert("Welcome to my page :)");
}

$('h1').text("My jQuery Practice Page!");

$('#change').css('background', 'pink');

$(document).ready(function() {
  $('#change').on('click', function() {
    var newWords= $('<p>Woo! The text changed.</p>');
    $('div').append(newWords);
    $('#change').remove();
});
});
