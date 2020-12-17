n = gets.to_i
p [16,27,25,7,11,13,17,19,23,29].inject(1){|a,b|a*b}+1
p ans
p ans.to_s.size
(2..n).each do |i|
  p ans%i
  p i if ans%i !=1
end
