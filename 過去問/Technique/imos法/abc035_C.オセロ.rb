n,q=gets.split.map(&:to_i)
imos=Array.new(n+1,0)
q.times do
  l,r=gets.split.map(&:to_i)
  imos[l-1]+=1
  imos[r]-=1
end
(1...n).each{|i|imos[i]+=imos[i-1]}
(0...n).each{|i|print imos[i]%2==0 ? 0 : 1}
puts ''
