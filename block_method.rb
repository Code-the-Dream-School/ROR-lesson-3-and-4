def do_calc
    result = yield(7, 9)
    puts result
end
  
# Main program
do_calc { |a, b| a + b }   # This should print 16
do_calc { |a, b| a * b }   # This should print 63
  