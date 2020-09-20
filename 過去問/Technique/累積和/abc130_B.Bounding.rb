n,x=gets.split.map(&:to_i)
l=gets.split.map(&:to_i)
sum=[0]
ans=1
(0...n).each do |m|
  sum[m+1]=sum[m]+l[m]
  break if sum[m+1]>x
  ans+=1
end
p ans
