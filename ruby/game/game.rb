=begin
create a class for hangman
upon creation of a new instance, input a new word
save this word and find the length
display "_" as many times as the length in an array
intake letters in a new method to test if they are in the word
if the letter is in the word, replace the array of hashes at the spot that each letter shows up (make sure it is replacing a instances of the letter, not just the first one)
if the letter is not in the word, show a list (array) of incorrect letters guessed
do NOT penalize for repeat guesses
let the user guess 2x as many times as there are letters in the word
if all the _s in the array have been replaced by letters before the guesses are up, end the game and say it has been won
if all guesses are used prior to finishing the array, say game over and print the word
=end

class Game

  def initialize(word)
   @word = word.downcase
   @guess_count = 0
    @incorrect_guesses = []
    @correct_guesses = []
    @max_guesses = word.length * 2
    hashes = "_" * word.length
    @word_array = hashes.split("")
    puts hashes
  end

end