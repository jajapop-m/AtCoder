n=gets.to_i
ans =0
(1...n).each do |i|
  (1...n).each do |j|
    break if i*j > n
    ans += 1 if i*j < n && i*j >0
  end
end
p ans
