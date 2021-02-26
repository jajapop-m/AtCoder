n=gets.to_i
ans =0
(1..n).each do |m|
  ans+=1 if m.to_s !~ /7/ && m.to_s(8) !~ /7/
end
p ans
