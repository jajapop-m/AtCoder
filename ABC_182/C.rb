n=gets.chomp.split('')
len=n.size
ans=Float::INFINITY
(0...2**len).each do |i|
  s=[]
  (0...len).each do |j|
    s << n[j] if i & 1 << j != 0
  end
  ans=[ans,len-s.size].min if s.join.to_i%3 == 0
end
ans=-1 if ans==len
p ans
