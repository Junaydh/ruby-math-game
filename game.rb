class Game
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1
  end
  def start
    while @player1.lives > 0 && @player2.lives > 0
      question = Question.new
      puts "----- NEW TURN -----"
      puts "#{@current_player.name}: #{question.question}"
      answer = gets.chomp.to_i
      if answer == question.answer
        puts "...I guess you're smarter than you look"
      else
        puts "INCORRECT"
        @current_player.lose_life
      end
      puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
      if @current_player == @player1
        @current_player = @player2
      else
        @current_player = @player1
      end
    end
    if @player1.lives == 0
      puts "Player 2 wins with a score of #{@player2.lives}/3"
    elsif @player2.lives == 0
      puts "Player 1 wins with a score of #{@player1.lives}/3"
    end
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end
end
