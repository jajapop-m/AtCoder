K = gets.to_i
x = 7 % K
i = 0
K.times do |i|
  if x == 0
    puts i+1
    exit
  end
  x = (x*10+7)%K
end
puts -1
