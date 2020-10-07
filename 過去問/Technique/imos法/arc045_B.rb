n,m=gets.split.map(&:to_i)
imos=Array.new(n+2,0)
st=m.times.map do
  s,t=gets.split.map(&:to_i)
  imos[s]+=1
  imos[t+1]-=1
  [s,t]
end
(1..n+1).each{|i|imos[i]+=imos[i-1]}
imos=imos.map{|i|i==1?1:0}
(1..n+1).each{|i|imos[i]+=imos[i-1]}
ans=[]
(0...m).each do |i|
  s,t=st[i]
  ans << i+1 if imos[t]-imos[s-1]==0
end

puts ans.size
puts ans
