m,d = gets.split.map(&:to_i)
if d < 22
  puts 0
  exit
end
count = 0
(1..m).each do |month|
  (22..d).each do |i|
    d10,d1 = i.to_s.split("").map(&:to_i)
    next if d10 < 2 || d1 < 2
    count += 1 if d10 * d1 == month
  end
end
puts count
