n,m = gets.split.map(&:to_i)
dp = Array.new(n+1){[1,false]}
dp[1][1] = true
m.times do
  a,b = gets.split.map(&:to_i)
  dp[b][0] += 1
  dp[a][0] -= 1
  dp[b][1] = dp[b][1] || dp[a][1]
  dp[a][1] = false if dp[a][0] == 0
end
ans = 0
dp.each {|_,bool| ans += 1 if bool}
p ans
