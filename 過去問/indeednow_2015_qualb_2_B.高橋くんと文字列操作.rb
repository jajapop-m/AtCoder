s = gets.chomp.split("").map(&:to_s)
t = gets.chomp.split("").map(&:to_s)
count = 0
s.length.times do
  if s == t
    puts count
    exit
  end
  s.unshift(s.pop)
  count += 1
end
puts -1
