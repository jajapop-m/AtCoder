# imos法
n,t=gets.split.map(&:to_i)
a=n.times.map{gets.to_i}
m=a.max+t+1
c=Array.new(m,0)
a.each do |i|
  c[i]+=1
  c[i+t]-=1
end
(1...m).each{|i|c[i]+=c[i-1]}
ans=0
c.each{|ci|ans+=1 if ci>0}
p ans
