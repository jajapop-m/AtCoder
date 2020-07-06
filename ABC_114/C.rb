N = gets.to_i

# class Count_753
#   attr_reader :counter
#   def initialize
#     @counter = 0
#   end

  # def solve(value, used)
  #   return if value > N
  #   counter += 1 if used == 0b111
  #
  #   solve(value*10 + 7, used | 0b001)
  #   solve(value*10 + 5, used | 0b010)
  #   solve(value*10 + 3, used | 0b100)
  # end
# end

# counter = Count_753.new
# counter.solve(0,0)
# puts counter.counter

def solve(value, used, counter)
  return if value > N
  counter[0] += 1 if used == 0b111

  solve(value*10 + 7, used | 0b001,counter)
  solve(value*10 + 5, used | 0b010,counter)
  solve(value*10 + 3, used | 0b100,counter)
end

counter = [0]
solve(0,0,counter)
puts counter[0]
