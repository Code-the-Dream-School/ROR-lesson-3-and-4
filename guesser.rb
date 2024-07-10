# guesser.rb

def get_feedback
    loop do
      print "Is my guess too low, too high, or correct? (Enter: too low, too high, correct): "
      feedback = gets.chomp.downcase
      return feedback if ["too low", "too high", "correct"].include?(feedback)
      puts "Invalid input. Please enter 'too low', 'too high', or 'correct'."
    end
  end
  
  def play_game
    puts "Think of a number between 1 and 100 and I will try to guess it."
    
    low = 1
    high = 100
    guess = nil
    
    loop do
      guess = (low + high) / 2
      puts "I guess: #{guess}"
      feedback = get_feedback
  
      case feedback
      when "too low"
        low = guess + 1
      when "too high"
        high = guess - 1
      when "correct"
        puts "Yay! I guessed your number!"
        break
      end
  
      if low > high
        puts "I think you're lying! There's no number you could be thinking of that fits your feedback."
        break
      end
    end
  end
  
  def play_again?
    print "Do you want to play again? (yes or no): "
    answer = gets.chomp.downcase
    answer == 'yes'
  end
  
  loop do
    play_game
    break unless play_again?
  end
  
  puts "Thank you for playing!"
  

  # A method can still belong to a class
  # rails is an opinionated framework

  