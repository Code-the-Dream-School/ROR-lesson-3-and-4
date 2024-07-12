class Sum1
  attr_accessor :total # so other classes can access this 
  def initialize(param1, param2)
    @total = param1 + param2
  end
end

class Sum2
  def initialize(a, b)
    @a = a
    @b = b
  end

  def new_total
    @a + @b
  end
end

sums1 = Sum1.new(5, 6)
puts sums1.total # needs .total or else will print out a to_s object reference 

sums2 = Sum2.new(5,6)
puts sums2.new_total

