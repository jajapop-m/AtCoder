n,s,d=gets.split.map(&:to_i)
xy=n.times.map{gets.split.map(&:to_i)}
flag = false
xy.each do |x,y|
  next if x>=s
  next if y<=d
  flag = true
end
puts flag ? "Yes" : "No"
