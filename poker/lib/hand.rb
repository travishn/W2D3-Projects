require_relative "deck"

class Hand

  attr_accessor :cards, :card_hash

  def initiailize(cards)
    @cards = cards
    @card_hash = Hash.new(0)
  end

  def update_hash
    @cards.each do |card|
      @card_hash[card.value] += 1
    end
  end

  def calculate_value
    if full_house?
      (@card_hash.key(3) * 3) + (@card_hash.key(2) * 2)
    elsif straight?

    elsif three_of_a_kind?
    elsif two_pair?
    elsif pair?
    else
    end
  end

  def full_house?
    @card_hash.value?(3) && @card_hash.value?(2)
  end

  def straight?
    sorted_keys = @card_hash.keys.sort
    sorted_keys.length == 5 && (sorted_keys.max - sorted_keys.min == 4)
  end

  def three_of_a_kind?
    @card_hash.value?(3) && @card_hash.keys.length == 3
  end

  def two_pair?
    @card_hash.values.count(2) == 2
  end

  def pair?
    @card_hash.values.count(2) == 1 && @card_hash.keys.length == 4
  end

end
