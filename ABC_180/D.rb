x,y,a,b=gets.split.map(&:to_i)
num=x
i=0
while num*a<num+b && num*a<y
  num*=a
  i+=1
end
ans=i+(y-num-1)/b
p ans
