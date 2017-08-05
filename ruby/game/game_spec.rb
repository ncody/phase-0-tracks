require_relative 'game'
describe Game do
  it "takes a word and returns a string of '_'s in place of each letter" do
    game = Game.new("dog")
    expect(game.create_hash).to eq "___"
  end
end
