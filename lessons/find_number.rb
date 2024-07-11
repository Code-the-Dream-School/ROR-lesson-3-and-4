def guessing_game
    secret_number = rand(1..100)
    guessed_correctly = false

    while !guessed_correctly
        puts "Guess a number between 1 and 100: "
        guess = gets.chomp

        if guess.to_i.to_s != guess
            puts "Invalid! Please enter a number!"
            next
        end
            
        if guess.to_i < secret_number
            puts "You guessed too low!"
        elsif 
            guess.to_i > secret_number
            puts "You guessed too high!"
        else # if guess == secret_number
            puts "You guessed right!"
            guessed_correctly = true
        end
    end 
end

def guessing_game_repeat
    puts "Do you want to play again?"
    answer = gets.chomp
    answer == 'yes'
end 

loop do 
    guessing_game
    break unless guessing_game_repeat
end

