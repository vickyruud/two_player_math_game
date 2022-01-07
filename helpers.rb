##Changes player each turn
def toggle_player 
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
end


##runs the game loop
def game_loop
    @questionObj = Question.new
    @question = @questionObj.create_question
    puts "#{@current_player.name}: #{@question[0]}"
    @input = gets.chomp.to_i
    if @input == @question[1]
      puts "YES! You are correct."
    else
      @current_player.reduce_lives
      puts "Seriously? No!!"
    end
    puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"

    if @player1.lives > 0 && @player2.lives > 0
      puts "----- NEW TURN -----" 
      toggle_player
    else
      if @player1.lives > @player2.lives
        puts "#{@player1.name} wins with a score of #{@player1.lives}/3"
      else
        puts "#{@player2.name} wins with a score of #{@player2.lives}/3"
      end
      puts "----Game Over----"
    end    
end