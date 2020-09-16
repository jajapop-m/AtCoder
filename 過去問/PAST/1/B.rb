N = gets.to_i
a = Hash.new
N.times do |i|
  a[i+1] = gets.to_i
end
for i in 2..N
  diff = a[i-1] - a[i]
  if diff == 0
    puts 'stay'
  elsif diff < 0
    puts "up #{diff*(-1)}"
  else
    puts "down #{diff}"
  end
end
