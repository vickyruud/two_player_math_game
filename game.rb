require './player.rb'
require './questions.rb'
require './helpers.rb'


class Game
  attr_accessor :player1, :player2, :question
  def initialize
    @player1 = Player.new
    @player2 = Player.new
    @current_player = @player1
  end
  
  def run_game
    while @player1.lives > 0 && @player2.lives > 0
      game_loop
    end
  end
end

game = Game.new
game.run_game
