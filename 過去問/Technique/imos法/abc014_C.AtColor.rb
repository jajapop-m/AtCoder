n=gets.to_i
imos=Array.new(1000002,0)
n.times do
  l,r=gets.split.map(&:to_i)
  imos[l]+=1
  imos[r+1]-=1
end
(1..1000000).each {|i|imos[i]+=imos[i-1]}
p imos.max
