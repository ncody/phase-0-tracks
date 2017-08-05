=begin
create a class for game
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

attr_reader :guess_count
attr_reader :max_guesses
attr_reader :word_array
attr_reader :word

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

  def check_word(letter)
    if @incorrect_guesses.include? letter or @correct_guesses.include? letter
    puts "you already guessed that"
    print @word_array.join.to_s
    puts "\nIncorrect guesses: #{@incorrect_guesses}"
    elsif
      @guess_count += 1
      if @word[letter] != nil
        @correct_guesses << letter
        i = -1
        index_array = []
      while i = @word.index(letter, i+1)
        index_array << i
      end
      index_array.each do |x|
        @word_array[x] = letter
      end
      print @word_array.join.to_s
      puts "\nIncorrect guesses: #{@incorrect_guesses}"
    else
      @incorrect_guesses << letter
      print @word_array.join.to_s
      puts "\nIncorrect guesses: #{@incorrect_guesses}"
    end
  end
end


puts "Welcome to the Word Game!"
puts "User 1, please enter the word for your partner to guess."
`stty -echo`
word = gets.chomp
`stty echo`
game = Game.new(word)
while game.max_guesses > game.guess_count
  puts "\nWhat letter would you like to guess?"
  guess = gets.chomp
  game.check_word(guess)
  if game.word == game.word_array.join.to_s
    puts "\nCongratulations! You won!"
    break
  elsif game.max_guesses == game.guess_count
    puts "You ran out of turns. The word was: #{game.word}"
  end
end
end





