n=gets.to_i
h=Hash.new(0)
ans=0
n.times do |i|
  s=gets.chomp.split('').sort.join
  ans+=h[s] if h[s]>0
  h[s]+=1
end
p ans
