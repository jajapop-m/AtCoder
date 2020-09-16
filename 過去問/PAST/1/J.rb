# h,w = gets.split.map(&:to_i)
# costs = []
# h.times {costs << gets.split.map(&:to_i)}
#
# dp = Array.new(h){Array.new(w)}
#
# (0...w).each do |j|
#   (h-1).downto(0) do |i|
#     next dp[i][j] = 0 if i == h-1 && j == 0
#     next dp[i][j] = dp[i][j-1] + costs[i][j] if i == h-1
#     next dp[i][j] = dp[i+1][j] + costs[i][j] if j == 0
#     dp[i][j] = costs[i][j] + [dp[i+1][j], dp[i][j-1]].min
#   end
#     p costs,dp
# end
#
# puts dp[h-1][w-1] + dp[0][w-1]

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


$H,$W = gets.split.map(&:to_i)

$A = [nil]*$H
$H.times do |h|
    $A[h] = gets.split.map(&:to_i)
end


def check(i,j,q,c,cost)
    if 0<=i && 0<=j && i<$H && j<$W
        nc = c + $A[i][j]
        if nc < cost[i][j]
            q << [i,j]
            cost[i][j] = nc
        end
    end
end

def dijkstra(si,sj)
    inf = 10**12
    cost = Array.new($H).map{[inf]*$W}

    q = [[si,sj]]
    cost[si][sj] = 0

    while q.any?
        i,j = q.shift
        c = cost[i][j]
        check(i-1,j,q,c,cost)
        check(i+1,j,q,c,cost)
        check(i,j-1,q,c,cost)
        check(i,j+1,q,c,cost)
    end

    cost
end

cost_lb = dijkstra($H-1,0)
cost_rb = dijkstra($H-1,$W-1)
cost_rt = dijkstra(0,$W-1)

p $A,cost_lb,cost_rb,cost_rt

ans = nil
$H.times do |h|
    $W.times do |w|
        cost = cost_lb[h][w] + cost_rb[h][w] + cost_rt[h][w]
        cost -= $A[h][w] * 2
        ans = cost if !ans || cost < ans
    end
end

puts ans
