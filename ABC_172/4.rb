# require 'prime'
#
# N = gets.to_i
# result = 0
# [*1..N].each_with_index do |n, i|
#   result  +=  (i+1) * n.prime_division.inject(1){|a,b| a*(b[1]+1)}
# end
# puts result

n = gets.to_i

ans = 0
1.upto(n) do |x|
  y = n / x
  sum = y * (y + 1) / 2
  ans += x * sum
end
puts ans
