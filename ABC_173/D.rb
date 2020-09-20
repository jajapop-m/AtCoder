n=gets.to_i
a = gets.split.map(&:to_i).sort
a.unshift(0)
sum = 0
(1..n-1).each do |k|
  sum += a[n-k/2]
end
p sum
