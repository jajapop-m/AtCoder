# TLE!!
n,m = gets.split.map(&:to_i)
check = Array.new(n){[]*n}
ans = [1]*n
max = 1
m.times do
  a,b = gets.split.map(&:to_i).sort
  next if check[a-1][b-1]
  check[a-1][b-1] = true
  ans[a-1] += 1
  max = [max,ans[a-1]].max
end
puts max
