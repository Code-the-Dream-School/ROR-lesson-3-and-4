require 'faker'

loop do
  puts "Would you like to know a fact about Chuck Norris? (y/n)"
  answer = gets.chomp.downcase

  if answer == 'y'
    puts Faker::ChuckNorris.fact
  elsif answer == 'n'
    puts "See you again"
    break
  else
    puts "Please enter 'y' for yes or 'n' for no."
    end
  end