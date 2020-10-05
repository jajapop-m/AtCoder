n,k=gets.split.map(&:to_i)
e=gets.split.map{|i|(1+i.to_f)/2}
ans=a=e[0,k].sum
(k...n).each do |i|
  a+=e[i]-e[i-k]
  ans=[ans,a].max
end
p ans
