h,w = gets.split.map(&:to_i)
squares = []
h.times do
  squares << gets.chomp.split("")
end
dp = Array.new(h){[0]*w}
(0...w).each do |j|
  break if squares[0][j] == "#"
  dp[0][j] = 1
end
(0...h).each do |i|
  break if squares[i][0] == "#"
  dp[i][0] = 1
end

squares.each_with_index do |line,i|
  line.each_with_index do |a,j|
    next if i == 0 || j == 0 || a == "#"
    dp[i][j] = dp[i-1][j] + dp[i][j-1]
  end
end
p dp[h-1][w-1] % (10**9+7)
