n = gets.to_i
h = gets.split.map(&:to_i)
dp = []
# dp[i] <= indexがiの場所に到達する最小コスト
dp[0] = 0
dp[1] = (h[1] - h[0]).abs
(2...n).each do |k|
  dp[k] = [dp[k-2] + (h[k] - h[k-2]).abs, dp[k-1] + (h[k] - h[k-1]).abs].min
end
p dp[n-1]
