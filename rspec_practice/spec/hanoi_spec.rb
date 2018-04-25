require "rspec"
require "hanoi"

RSpec.describe "Hanoi" do
  let(:travis) { double("Traivs")}
  subject(:game) { Hanoi.new(travis) }

  describe "#initialize" do
    it "sets the player as a variable" do
      expect(game.player).to eq(travis)
    end

    it "places the towers correctly" do
      expect(game.towers).to match_array([[], [], []])
    end
  end

  describe "#place_disc" do

    it "places the discs correctly" do
      game.place_disc
      expect(game.towers).to match_array([[1, 2, 3], [], []])
    end
  end

  describe "#valid_move?" do

    it "checks if from position is not empty" do
      game.place_disc
      expect { game.valid_move?(1,2) }.to raise_error("There is no disc in this tower")
    end

    it "checks if the top disc of the end pos is larger than the top disc of the start pos" do
      game.towers = [[1], [2], [3]]
      expect { game.valid_move?(2,0) }.to raise_error("Disc is too large for that end pos.")
      expect(game.valid_move?(0,2)).to be(true)
    end
  end

  describe "#move" do

    it "calls the helper method 'valid_move?'" do
      expect(game).to receive(:valid_move?)
      game.move(0, 1)
    end

    it "accepts a from and to position as arguments" do
      expect { game.move }.to raise_error(ArgumentError)
    end

    it "moves  disc from and to tower" do
      game.place_disc
      game.move(0, 2)
      expect(game.towers).to eq([[2,3], [], [1]])
    end
  end

  describe "#won?" do
    it "checks if first tower is empty" do
      expect(game.towers.first).to be_empty
    end

    it "checks if 2nd or 3rd tower has three discs" do
      game.towers = [[], [1,2,3], []]
      expect(game.won?).to be(true)
    end
  end
end
