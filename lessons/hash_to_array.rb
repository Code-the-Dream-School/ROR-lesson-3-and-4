collected_keys_values = {}

while collected_keys_values.length < 5

  puts "Enter a key: "
  collects_keys = gets.chomp #5 keys

  puts "Enter a value: "
  collects_values = gets.chomp #5 values
  
  collected_keys_values[collects_keys] = collects_values
end

def accept_hash(collected_keys_values)
    puts "Keys: "
    collected_keys_values.each_key { |k| puts k }
    puts "Values: "
    collected_keys_values.each_value { |v| puts v }
end

accept_hash(collected_keys_values) 
