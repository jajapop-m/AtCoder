x=gets.chomp.to_s
d=x.split('').map(&:to_i).max
m=gets.to_i
ans=0
ans = (d+1..m+1).bsearch do |n|
  x.chars.inject(0){|a,b|a*n+b.to_i} > m
end
p ans
