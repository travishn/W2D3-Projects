class Array
  def my_uniq
    result = []

    self.each do |el|
      result << el unless result.include?(el)
    end

    result
  end

  def two_sum
    result = []

    self.each_with_index do |el, idx|
      (idx+1...self.length).each do |idx2|
        el2 = self[idx2]
        result << [idx, idx2] if (el + el2 == 0)
      end
    end

    result
  end

  def my_transpose
    result = Array.new(self.first.length) { Array.new }

    self.each do |row|
      self.first.length.times do |idx|
        result[idx] << row[idx]
      end
    end

    result
  end

  def stock_picker
    result = []
    most_profit = 0

    self.each_with_index do |price1, idx1|
      (idx1+1...self.length).each do |idx2|
        price2 = self[idx2]
        difference = price2 - price1

        if difference > most_profit
          most_profit = difference
          result = [idx1, idx2]
        end
      end
    end

    return nil if most_profit <= 0
    result
  end
end
