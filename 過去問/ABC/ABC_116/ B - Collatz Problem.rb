a=[]
a[1]=gets.to_i
ans=1
(2..1000000).each do |n|
  p= a[n-1]%2==0 ? a[n-1]/2 : 3*a[n-1]+1
  break ans=n if a.find_index p
  a[n]=p
end
p ans
