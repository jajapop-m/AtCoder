n = gets.to_i
if n < 2
  puts 0
  exit
end
puts (10**n - 2*(9**n) + 8**n) % (10**9+7)
