def guessing_game_2
    puts "Think of a number between 1 and 100."
    puts "I will try to guess it. Please respond with 'too low', 'too high', or 'correct'."
  
    low = 1
    high = 100
    lying = false
  
    while low <= high
      guess = (low + high) / 2
      puts "Is your number #{guess}?"
      response = gets.chomp.downcase
  
      case response
      when "too low"
        if guess >= high
          lying = true
          break
        end
        low = guess + 1
      when "too high"
        if guess <= low
          lying = true
          break
        end
        high = guess - 1
      when "correct"
        puts "I guessed it!"
        return
      else
        puts "Invalid response. Please respond with 'too low', 'too high', or 'correct'."
      end
    end
  
    if lying
      puts "You are lying! There is no number between #{low} and #{high}."
    else
      puts "You are lying! I have exhausted all possibilities."
    end
  end
  
  def play_again?
    puts "Do you want to play again? (y/n)"
    answer = gets.chomp.downcase
    answer == 'y'
  end
  
  loop do
    guessing_game_2
    break unless play_again?
  end
  
  puts "Thanks for playing!"
  