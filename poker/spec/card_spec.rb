require 'rspec'
require 'card'

RSpec.describe "Card" do
  subject(:card) { Card.new(7, :diamond) }

  describe "#initialize" do
    it "should set the card value" do
      expect(card.value).to eq(7)
    end
    
    it "should set the card suit" do
      expect(card.suit).to eq(:diamond)
    end
  end
  
end