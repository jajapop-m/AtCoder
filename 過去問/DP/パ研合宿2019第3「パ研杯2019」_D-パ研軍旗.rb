n = gets.to_i
s = []
5.times do
  s << gets.chomp.split("")
end

dp = Array.new(n){[]*3}
s = s.transpose
row = s[0].join
l = row.length
dp[0][0] = l - row.count("R")
dp[0][1] = l - row.count("B")
dp[0][2] = l - row.count("W")
s.each_with_index do |r,i|
  next if i == 0
  row = r.join
  l = row.length
  dp[i][0] = [dp[i-1][1] + l - row.count("R"),dp[i-1][2] + l - row.count("R")].min
  dp[i][1] = [dp[i-1][0] + l - row.count("B"),dp[i-1][2] + l - row.count("B")].min
  dp[i][2] = [dp[i-1][0] + l - row.count("W"),dp[i-1][1] + l - row.count("W")].min
end
p dp[n-1].min
