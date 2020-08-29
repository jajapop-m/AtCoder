n = gets.to_i
a = gets.split.map(&:to_i)

sum = a.sum
ans = 0
a.each do |ai|
  sum -= ai
  ans += ai * sum
end
puts ans % (10**9 +7)

# sum = 0
# (1...n).each do |i|
#   (i+1..n).each do |j|
#     sum += a[i-1] * a[j-1]
#   end
# end
# puts sum % (10**9 +7)
