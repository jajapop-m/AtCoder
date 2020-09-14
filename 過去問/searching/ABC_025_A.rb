n = gets.to_i
min = Float::INFINITY
(1..n/2+1).each do |i|
  a = i.to_s.split("").map(&:to_i)
  b = (n-i).to_s.split("").map(&:to_i)
  sum = a.sum+b.sum
  min = sum if min > sum
end
puts min
