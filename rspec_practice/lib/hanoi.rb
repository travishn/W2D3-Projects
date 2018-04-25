class Hanoi

  attr_reader :player
  attr_accessor :towers

  def initialize(player)
    @player = player
    @towers = Array.new(3) { Array.new }
  end

  def place_disc
    @towers[0] = [1,2,3]
  end

  def move(from, to)
    if valid_move?(from, to)
      @towers[to].unshift(@towers[from].shift)
    end
  end

  def valid_move?(from, to)
    from_disc = @towers[from].first
    to_disc =  @towers[to].first

    raise "There is no disc in this tower" if @towers[from].empty?

    return true if to_disc.nil?
    raise "Disc is too large for that end pos." if from_disc > to_disc
    true
  end

  def won?
    @towers.count([]) == 2 && @towers[0].empty?
  end

end
