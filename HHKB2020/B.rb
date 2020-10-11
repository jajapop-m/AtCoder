h,w=gets.split.map(&:to_i)
a=h.times.map{gets.chomp.split('')}
ans=0
a.each do |aa|
  aa.each_cons(2) do |a,b|
    ans+=1 if a=='.'&&b=='.'
  end
end
a.transpose.each do |aa|
  aa.each_cons(2) do |a,b|
    ans+=1 if a=='.'&&b=='.'
  end
end
p ans
