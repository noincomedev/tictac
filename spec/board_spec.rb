require './lib/board.rb'
require './lib/player.rb'
puts "este es el test"

RSpec.describe Board do

  describe "#draw?" do
    it "check if the game is a draw" do
      player = Player.new("X")
      player2 = Player.new("O")
      board = Board.new(player,player2)
      expect(board.draw?).to eql(false)
    end
  end

  describe "#check_horizontal" do
    it "check if some player win at horizontal or row" do
      player = Player.new("X")
      player2 = Player.new("O")
      player.make_play(9)
      player2.make_play(1)
      player.make_play(6)
      player2.make_play(2)
      player.make_play(5)
      player2.make_play(3)
      board = Board.new(player,player2)
      expect(board.check_horizontal).to eql(true)
    end
  end

end