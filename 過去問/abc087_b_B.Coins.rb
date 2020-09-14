c500 = gets.to_i
c100 = gets.to_i
c50 = gets.to_i
x = gets.to_i
ans = 0
(0..c500).each do |i|
  (0..c100).each do |j|
    (0..c50).each do |k|
      ans += 1 if i*500 + j*100 + k*50 == x
    end
  end
end
puts ans
