n,d = gets.split.map(&:to_i)
count = 0
n.times do
  x,y = gets.split.map(&:to_i)
  count += 1 if x**2 + y**2 <= d*d
end

puts count
