# w = gets.to_i
# n,k = gets.split.map(&:to_i)
# dp = Array.new(k+1){Array.new(n){Array.new(w+1){0}}}
# ab = n.times.map {gets.split.map(&:to_i)}
#
# (0...k).each do |kk|
#   each = ab.each
#   (0...n).each do |i|
#
#     a,b = each.next
#     (0..w).each do |j|
#       p [kk,i,j]
#       comp = dp[kk-1][i-1][j-a]+b
#       comp = 0 if j-a < 0
#       if comp > dp[kk-1][i-1][j]
#         dp[kk][i][j] = comp
#         count += 1
#       else
#         dp[kk][i][j] = dp[kk][i-1][j]
#       end
#     end
#   end
# end
# p dp
