require_relative 'game'

describe Game do
  it "takes the word from initialize and outputs a string with hashes in place of every character" do
    game = Game.new('dog')
    expect(game.hash).to eq "___"
  end
end
