h,w = gets.split.map(&:to_i)
costs = []
h.times {costs << gets.split.map(&:to_i)}

dp = Array.new(h){Array.new(w)}

(0...w).each do |j|
  (h-1).downto(0) do |i|
    next dp[i][j] = 0 if i == h-1 && j == 0
    next dp[i][j] = dp[i][j-1] + costs[i][j] if i == h-1
    next dp[i][j] = dp[i+1][j] + costs[i][j] if j == 0
    dp[i][j] = costs[i][j] + [dp[i+1][j], dp[i][j-1]].min
  end
    p costs,dp
end

# (1...w).each do |j|
#   (h-1).downto(1) do |i|
#     dp[i][j] = costs[i][j] + [dp[i-1][j], dp[i][j+1]].min
#   end
#     p costs,dp
# end

puts dp[h-1][w-1] + dp[0][w-1]

#    1    2  265 1544    0 1548 4334 9846   58    0
#   21    0   50   44    2  388    5    0    0    4
#  170    0    2    1   54 1379   50    3   41    0
#  310    0    1    0 2163    0  226   26    3   12
#  151   33    0    9    0    0    0   36  365 2286
#    0    3   12    3    9  317  645  100   21    4
#   52    1  569    0  144    0    6  202   25    0
# 8869   19 2058 1948 1252 1002    7 1750    0    5
#    0    3    8   29    2 4403    0    0    0    5
#    0   17   93 9367  159    6    1  216    0    0
