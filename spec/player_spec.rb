require './lib/player.rb'
puts "este es el test"

RSpec.describe Player do
  describe "#add" do
    it "returns false if the game start" do
     player =Player.new("X")
      expect(player.plays).to eql({})
    end
  end