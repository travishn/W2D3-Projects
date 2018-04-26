require_relative 'card'

class Deck

  attr_accessor :cards

  def initialize(cards = [])
    @cards = cards
  end

  def self.place_cards
    fresh = Deck.new
    fresh.shuffle_cards
    fresh
  end

  def shuffle_cards
    suits = [:spade, :heart, :club, :diamond]

    suits.each do |suit|
      (1..13).each do |value|
        @cards << Card.new(value, suit)
      end
    end

    @cards.shuffle!
  end

end
