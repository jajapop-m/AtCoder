n = gets.to_i
(1..50000).each do |i|
  if i * 108 / 100 == n
    puts i
    exit
  end
end
puts ":("
