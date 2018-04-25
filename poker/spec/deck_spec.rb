require 'rspec'
require 'deck'

RSpec.describe "Deck" do
  subject(:deck) { Deck.new }

  describe "#initialize" do
    it "defaults cards to an empty array" do
      expect(deck.cards).to be_empty
    end
  end

  describe "::place_card" do
    before(:each) do
      full_deck = Deck.place_cards
    end

    it "creates a deck with 52 cards" do
      expect(full_deck.cards.length).to eq(52)
    end

    it "creates a shuffled deck" do
      expect()
    end
  end

end
