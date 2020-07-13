n = gets.to_i
a = gets.split.map &:to_i
count = 0
a.each_with_index do |num,idx|
  count +=1 if ((idx + 1) % 2 == 1) && (num % 2 == 1)
end
puts count
