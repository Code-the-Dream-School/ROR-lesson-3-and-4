person_hash = { 
    first_name: 'Bianca', 
    last_name: 'Boykin',
    age: 33,
    street_address: '455 crow rd.',
    city: 'altadena',
    state: 'Tx',
}

puts person_hash
person_hash.each_key { |k| puts k}
person_hash.each_value { |v| puts v}

person_hash.each do |k, v|
    if [:first_name, :last_name, :city].include?(k) && v.is_a?(String)
        person_hash[k] = v.capitalize
    end
end

person_hash[:state] = person_hash[:state].upcase if person_hash[:state].is_a?(String)

person_hash.each_value { |v| puts v}

5.times do
    puts "Hi There"
  end

  (1..5).each do |x|
    puts x
  end