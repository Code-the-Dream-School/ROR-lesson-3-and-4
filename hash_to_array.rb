def print_keys_and_values(hash)
    keys = hash.keys
    values = hash.values
    puts "Keys: #{keys}"
    puts "Values: #{values}"
end
  
def collect_keys_and_values
    hash = {}
    5.times do |i|
      print "Enter key #{i + 1}: "
      key = gets.chomp
      print "Enter value for key '#{key}': "
      value = gets.chomp
      hash[key] = value
    end
    hash
end
  
# Main program
user_hash = collect_keys_and_values
print_keys_and_values(user_hash)
  