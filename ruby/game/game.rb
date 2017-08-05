class Game
  def initialize(word)
    @word = word.downcase
    @length = word.length
    @max_guesses = word.length * 2
    @guess_count= 0
    @incorrect_guesses = []
    @correct_guesses = []
  end

  def hash
    value = "_" * @length
    return value
  end


end