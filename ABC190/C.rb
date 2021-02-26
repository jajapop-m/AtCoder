n,m=gets.split.map(&:to_i)
ab=m.times.map{gets.split.map(&:to_i)}
k=gets.to_i
cd=k.times.map{gets.split.map(&:to_i)}
ans=0
(0...2**k).each do |i|
  hash = Hash.new(false)
  i.to_s(2).rjust(k,"0").each_char.with_index do |s,idx|
    hash[cd[idx][s.to_i]]=true
  end
  count=0
  ab.each do |a,b|
    count+=1 if hash[a] && hash[b]
  end
  ans=[ans,count].max
end
p ans
