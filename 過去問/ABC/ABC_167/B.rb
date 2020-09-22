a,b,c,k=gets.split.map(&:to_i)
ans=0
num=k
if a > k
  p k
else
  ans+=a
  num-=a+b
  if num<0
    p ans
  else
    ans-=num
    p ans
  end
end
