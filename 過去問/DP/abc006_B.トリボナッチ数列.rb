dp = [0,0,1]
n = gets.to_i
(3...n).each do |k|
  dp[k] = (dp[k-1] + dp[k-2] + dp[k-3]) % 10007
end
p dp[n-1] % 10007
