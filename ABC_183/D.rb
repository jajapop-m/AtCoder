n,w=gets.split.map(&:to_i)
stp=n.times.map{gets.split.map(&:to_i)}
ary=Array.new(2*10**5+1,0)
stp.each do |s,t,p|
  ary[s]+=p
  ary[t]+=-p
end
sum=[ary[0]]
max=ary[0]
(1..2*10**5).each do |i|
  sum[i]=sum[i-1]+ary[i]
  max=[max,sum[i]].max
end
puts max <= w ? :Yes : :No
