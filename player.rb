class Player
  attr_accessor :lives, :name
  def initialize (player_name)
    @lives = 3
    @name = player_name
  end

  def reduce_lives
    @lives -= 1
  end
end