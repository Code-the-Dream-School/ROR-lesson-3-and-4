person = {}

print "Enter your first name: "
person[:first_name] = gets.chomp

print "Enter your last name: "
person[:last_name] = gets.chomp

print "Enter your age: "
person[:age] = gets.chomp.to_i

print "Enter your street address: "
person[:street_address] = gets.chomp

print "Enter your city: "
person[:city] = gets.chomp

print "Enter your state: "
person[:state] = gets.chomp

puts "\nHash value:"
puts person

puts "\nKeys of the hash:"
puts person.keys

puts "\nValues of the hash:"
puts person.values

person[:first_name] = person[:first_name].capitalize
person[:last_name] = person[:last_name].capitalize
person[:city] = person[:city].capitalize

person[:state] = person[:state].upcase

puts "\nUpdated hash contents:"
puts person
