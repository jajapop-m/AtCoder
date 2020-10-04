n,m=gets.split.map(&:to_i)
l=Array.new(m+2,0)
s=0
n.times do
  a,b,c=gets.split.map(&:to_i)
  s+=c
  l[a]+=c
  l[b+1]-=c
end
(1..m+1).each{|i|l[i]+=l[i-1]}
p s-l[1,m].min
