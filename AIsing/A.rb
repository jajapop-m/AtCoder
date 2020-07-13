l,r,d = gets.split.map(&:to_i)
count = 0
l.upto(r) do |n|
  count += 1 if n % d == 0
end

puts count
