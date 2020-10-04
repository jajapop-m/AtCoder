n,c=gets.split.map(&:to_i)
imos=Array.new(c){[0]*100001}
n.times do
  l,r,i=gets.split.map(&:to_i)
  imos[i-1][l-1]+=1
  imos[i-1][r]-=1
end
(0...c).each do |i|
  (1..100000).each{|j|imos[i][j]+=imos[i][j-1]}
end
ans=0
imos.transpose.each {|l|ans=[ans,l.count{|a|a>0}].max}
p ans
