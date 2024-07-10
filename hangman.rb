def hangman(word, guessed_letters)
    word.chars.map { |char| guessed_letters.include?(char) ? char : '_' }.join
end
  
def request_user_input
    print "Enter the word to guess: "
    word = gets.chomp
  
    print "Enter the guessed letters (separated by commas): "
    guessed_letters = gets.chomp.split(',').map(&:strip)
  
    result = hangman(word, guessed_letters)
    puts "Result: #{result}"
end
  
  # Demonstrate a test case
  puts "Example for game:"
  example_word = "alphabet"
  example_guessed_letters = ["a", "h"]
  puts "Word: #{example_word}"
  puts "Guessed Letters: #{example_guessed_letters.join(', ')}"
  puts "Should Return: #{hangman(example_word, example_guessed_letters)}"
  puts
  
# Main program loop
loop do
    request_user_input
  
    print "Do you want to try again? (yes/no): "
    break if gets.chomp.downcase != 'yes'
end
  