N = gets.to_i
a = gets.split.map(&:to_i)
result = 1
if !a.any? 0
  a.each do |i|
    if result <= 10 ** 18
      result = result * i
    end
  end
else
  result = 0
end
puts result if result <= 10 **18
puts -1 if result > 10 ** 18
