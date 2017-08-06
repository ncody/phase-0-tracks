require_relative 'game'

describe Game do
=begin
 commented out because you can't run test code on initialize
  it "takes the word from initialize and outputs a string with hashes in place of every character" do
    game = Game.new('dog')
    expect(game.initiaize).to eq "___"
  end
=end
  it "takes the word from initialize and outputs a string with hashes in place of every character" do
    game = Game.new('dog')
    expect(game.hash).to eq "___"
  end

#commented out because was funcitioning when added but had to be added to the check word function below
  #it "checks the guessed letter to see if it has already been guessed" do
   #   game = Game.new('dog')
    #  expect(game.check_guess('d')).to eq 1
    #end

  it "checks the original word for the letter, if it has it it adds it in that index to the array of hashes, if not, it adds the letter to incorrect guesses" do
     game = Game.new('dog')
     expect(game.check_word('d')).to eq ["d", "_", "_"]
  end
end
