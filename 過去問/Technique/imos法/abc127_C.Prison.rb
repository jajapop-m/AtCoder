n,m=gets.split.map(&:to_i)
imos=Array.new(n+2,0)
m.times do
  i,j=gets.split.map(&:to_i)
  imos[i]+=1
  imos[j+1]-=1
end
(0..n).each{|i|imos[i+1]+=imos[i]}
p imos.count(m)
