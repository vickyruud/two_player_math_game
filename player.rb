class Player
  attr_accessor :lives
  def initialize
    @lives = 3
  end

  def reduce_lives
    @lives -= 1
  end
end