require 'rspec'
require 'hand'

RSpec.describe "Hand" do
  subject(:my_hand) {Hand.new([2,3,4,5,6])}
  describe "#initialize" do
    it "starts with an empty hash" do
      expect()
    end
  end
end
