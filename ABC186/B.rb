h,w=gets.split.map(&:to_i)
a=h.times.map{gets.split.map(&:to_i)}
min=101
a.each do |l|
  min=[min,l.min].min
end
ans=0
a.each do |l|
  l.each do |n|
    ans+=n-min
  end
end
p ans
