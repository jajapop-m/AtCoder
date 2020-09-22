x,y = gets.split.map(&:to_i)
(0..x).each do |i|
  if i * 2 + (x-i) * 4 == y
    puts "Yes"
    exit
  end
end
puts "No"
