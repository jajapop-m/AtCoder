s = gets.to_i
dp = []
dp.push(1,0,0)
(3..s).each do |i|
  (0..i-3).each do |j|
    dp[i] ||= 0
    dp[i] += dp[j]
    dp[i] %= 10**9+7
  end
end
puts dp[s]

# TLE!!
# N = gets.to_i
# def solve(m)
#   return $count += 1 if m == 0
#   return if m <= 2
#   (3..m).each do |i|
#     solve(m-i)
#   end
# end
# $count = 0
# solve(N)
# puts $count % (10**9 + 7)
