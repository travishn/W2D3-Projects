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
    let(:full_deck) { Deck.place_cards }
    # before(:each) do
    #   full_deck =
    # end

    it "creates a deck with 52 cards" do
      expect(full_deck.cards.length).to eq(52)
    end

    it "creates 52 unique cards" do
      comparator = full_deck.cards.map {|card| [card.value, card.suit] }.uniq
      expect(comparator.length).to eq(52)
    end

    it "creates a shuffled deck" do
      sorted = full_deck.cards.sort_by { |instance| instance.value }
      expect(full_deck.cards).to_not eq(sorted)
    end
  end
end
