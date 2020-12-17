n=gets.to_i
ans = 1
c=1
(n-1-11).times do
  ans*=n-1
  n-=1
  ans/=c
  c+=1
end
p ans
