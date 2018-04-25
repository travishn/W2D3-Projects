require_relative 'card'

class Deck

  attr_accessor :cards

  def initialize(cards = [])
    @cards = cards
  end

  def self.place_cards
    fresh = shuffle_cards
    Deck.new(fresh)
  end

  def shuffle_cards
    result = []
    suits = [:spade, :heart, :clover, :diamond]

    suits.each do |suit|
      (1..13).each do |value|
        result << Card.new(value, suit)
      end
    end

    result.shuffle!
  end

end
