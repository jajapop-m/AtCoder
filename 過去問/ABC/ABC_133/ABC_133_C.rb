l,r=gets.split.map(&:to_i)
r=[r,l+2019].min
a=Array.new(2019)
ans=Float::INFINITY
(l...r).each do |n|
  min=Float::INFINITY
  (n+1..r).each do |m|
    min=[min,n*m%2019].min
  end
  if min==0
    p 0
    exit
  end
  a[n%2019] = min
  ans=[ans,min].min
end
p ans
