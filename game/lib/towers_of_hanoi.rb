class TowersOfHanoi
  attr_accessor :towers
  def initialize
    @towers = Array.new(3) { Array.new([]) }
  end

  def populate
    (1..3).each do |i|
      @towers[0] << i
    end
    @towers
  end

  def valid_move?(start_pos, end_pos)
    raise "not a valid move!" if @towers[start_pos].empty?
  end

  def move(start_pos, end_pos)
    val = @towers[start_pos].shift
    @towers[end_pos].unshift(val)
    @towers
  end

  def won?
    p @towers
    if (@towers[0].empty? && @towers[1].empty?) || (@towers[0].empty? && @towers[2].empty?)
      return true
    end
    false
  end


end
