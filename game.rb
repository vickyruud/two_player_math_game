require './player.rb'
require './questions.rb'

class Game
  attr_accessor :player1, :player2, :question
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1
  end

  def game_loop
    @questionObj = Question.new
    @question = @questionObj.create_question
    # p @question[0]
    puts "#{@current_player.name}: #{@question[0]}"
    @input = gets.chomp.to_i
    if @input == @question[1]
      puts "YES! You are correct."
    else
      @current_player.reduce_lives
      puts "Seriously? No!!"
    end
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"

    if @player1.lives > 0 && @player2.lives > 0
      puts "----- NEW TURN -----" 
      toggle_player
    else
      if @player1.lives > @player2.lives
        puts "#{@player1.name} wins with a score of #{@player1.lives}/3"
      else
        puts "#{@player2.name} wins with a score of #{@player2.lives}/3"
      end
      puts "-----Game Over-----"
    end    
  end
  
  def toggle_player 
    if @current_player.name == "Player 1"
      @current_player = @player2
    else
      @current_player = @player1
    end
  end

  def run_game
    while @player1.lives > 0 && @player2.lives > 0
      game_loop
    end
  end
end

game = Game.new
game.run_game
