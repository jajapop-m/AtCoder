n=gets.to_i
c=0
while n>=500
  n-=500
  c+=1000
end
while n>=5
  n-=5
  c+=5
end
p c
