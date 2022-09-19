
class Game
  attr_reader :player_1, :player_2
  attr_accessor :turn

  def initialize()
    @player_1 = Player.new('Player 1', 1)
    @player_2 = Player.new('Player 2', 2)
    @turn = 0

    player_1.current_player = true     # Start off with Player 1.
  end

  def who_is_playing      # Keep track of the current player.
    player_1.current_player ? player_1 : player_2
  end

  def toggle_who_is_playing      # Change the current player after each turn.
    player_1.current_player = !player_1.current_player
    player_2.current_player = !player_2.current_player
  end

  def which_turn()
    self.turn += 1
  end


  def play
      puts "TURN #{which_turn}"

      question = Question.new
      puts "#{who_is_playing.name}: What does #{question.num_1} plus #{question.num_2} equal?"
      print "> "
      input = gets.chomp.to_i

      if (input == question.answer) 
        puts "#{who_is_playing.name}: YES! You are correct!"
      else
        puts "#{who_is_playing.name}: Seriously? No!"
        who_is_playing.life -= 1
      end

      puts "P#{player_1.id}: #{player_1.life}/3 VS P#{player_2.id}: #{player_2.life}/3"
      print "\n"

    new_turn_maybe
  end


  def new_turn_maybe
    if player_1.life == 0
      puts "Player 2 wins after #{turn} turns with a score of #{player_2.life}/3!"
      game_over
    elsif player_2.life == 0
      puts "Player 1 wins after #{turn} turns with a score of #{player_1.life}/3!"
      game_over
    else
      toggle_who_is_playing
      play
    end
  end


  def game_over
    print "\n"
    puts "GAME OVER!"
    puts "Good bye!"
  end

end