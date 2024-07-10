require 'faker'

loop do
  print "Do you want to know a fact about Chuck Norris? (yes/no): "
  answer = gets.chomp.downcase

  if answer == 'yes'
    puts Faker::ChuckNorris.fact
  elsif answer == 'no'
    puts "Goodbye!"
    break
  else
    puts "Please enter 'yes' or 'no'."
  end
end
