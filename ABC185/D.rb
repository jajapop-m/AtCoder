n,m=gets.split.map(&:to_i)
a=gets.split.map(&:to_i).sort
a.unshift(0)
a << n+1
min = 10**9+1
ary = (m+1).times.map do |i|
  b=a[i+1]-a[i]-1
  next if b==0
  min = [min,b].min
  a[i+1]-a[i]-1
end.compact
ans = 0
ary.each do |ai|
  ans += ai%min==0 ? ai/min : ai/min+1
end
p ans
