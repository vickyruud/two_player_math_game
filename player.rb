class Player
  attr_accessor :lives, :name
  def initialize ()
    @lives = 3
    puts "Please enter your name:"
    @name = gets.chomp
  end

  def reduce_lives
    @lives -= 1
  end
end