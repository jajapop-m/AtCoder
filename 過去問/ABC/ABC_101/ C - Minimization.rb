a,b=gets.split.map &:to_i
c=gets
if a<=b
  p 1
  exit
end
a-=b
ans = 1
loop do
  break if a<=0
  a-=b-1
  ans +=1
end
p ans
