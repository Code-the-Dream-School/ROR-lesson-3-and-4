def generate_secret_number
    rand(1..100)
  end
  
  def get_guess
    print "Enter your guess (1-100): "
    guess = gets.chomp
    if guess.to_i.to_s == guess
      guess.to_i
    else
      puts "Invalid input. Please enter a number between 1 and 100."
      nil
    end
  end
  
  def play_game
    secret_number = generate_secret_number
    loop do
      guess = get_guess
      next if guess.nil?
  
      if guess == secret_number
        puts "Congratulations! You guessed the correct number!"
        break
      elsif guess < secret_number
        puts "Your guess is too low."
      elsif guess > secret_number
        puts "Your guess is too high."
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
  