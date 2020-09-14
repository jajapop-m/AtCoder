list = []
gets.to_i.times do
  list << gets.split.map(&:to_i)
end
max = 0
ans = nil
list.each do |n|
  list.each do |m|
    next if n == m
    x1,y1 = n
    x2,y2 = m
    l = (x1-x2).abs + (y1-y2).abs
    if max < l
      max = l
      ans = Math.sqrt((x1-x2)**2 + (y1-y2)**2)
    end
  end
end
puts ans
