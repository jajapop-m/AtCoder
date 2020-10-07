a,b,x=gets.split.map(&:to_i)
l=1
r=10**9
c=nil
35.times do
  c=(l+r)/2
  a*c + b*c.to_s.size<=x ? l=c+1 : r=c-1
end
p c
