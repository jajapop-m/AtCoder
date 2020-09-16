dp = [true]
n = gets.to_i
(1..n).each do |i|
  next if i < 100
  dp[i] = dp[i-105] || dp[i-104] || dp[i-103] ||
          dp[i-102] || dp[i-101] || dp[i-100]
end
p dp[n] ? 1 : 0

# 決め打ちで判定
# n = gets.to_i
# p ((100*(n / 100))..(105*(n / 100))).include?(n) ? 1 : 0

# すべての金額を羅列
# price = [*100..105]
# dp = [[*100..105]]
# n = gets.to_i
# if price.include? n
#   p 1
#   exit
# end
# (1..1000).each do |k|
#   dp[k] = []
#   price.each do |p|
#     dp[k-1].each do |d|
#       if d+p == n
#         p 1
#         exit
#       end
#       dp[k] << d+p
#     end
#   end
#   dp[k].uniq!
# end
# p 0
