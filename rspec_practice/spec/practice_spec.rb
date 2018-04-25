require 'rspec'
require 'practice'

RSpec.describe 'Array' do

  describe '#my_uniq' do
    arr = [1,2,1,3,3]
    it 'removes duplicates from array' do
        expect(arr.my_uniq).to eq([1,2,3])
    end
  end


  describe "#two_sum" do
    arr = [-1, 0, 2, -2, 1]
    it "finds all pairs of positions that sum to zero" do
      expect(arr.two_sum).to eq([[0,4], [2,3]])
    end
  end

  describe "#my_transpose" do
    rows = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8]
    ]

    it "converts the array correctly" do
      expect(rows.my_transpose).to match_array(rows.transpose)
    end
  end

  describe "#stock_picker" do
    it "picks the most profitable days to buy and sell the stock" do
      stock_prices = [5, 1, 7, 3, 10, 6]
      expect(stock_prices.stock_picker).to eq([1, 4])
    end

    it "returns nil if there is no profitable pair" do
      stock_prices = [5,4,3,2,1]
      expect(stock_prices.stock_picker).to_not be_truthy
    end
  end
end
