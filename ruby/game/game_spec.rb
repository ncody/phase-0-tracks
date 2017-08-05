require_relative 'game'

describe Game do
=begin
commented out because this method has to be in initialize in order to make an array of the hashes
  it "takes the word from initialize and outputs a string with hashes in place of every character" do
    game = Game.new('dog')
    expect(game.hash).to eq "___"
  end
=end

  it "checks the original word for the letter, if it has it it adds it in that index to the array of hashes, if not, it adds the letter to incorrect guesses" do
     game = Game.new('dog')
     expect(game.check_word('d')).to eq ["d", "_", "_"]
  end
end
