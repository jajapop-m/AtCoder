n=gets.to_i
ab=n.times.map{gets.split.map(&:to_i)}.sort_by{|m|m[0]}.sort_by{|m|m[0]*2+m[1]}.reverse
sum = ab.transpose[0].sum
c = 0
i = 0
while sum >= c
  sum -= ab[i][0]
  c += ab[i][0] + ab[i][1]
  i += 1
end
p i
