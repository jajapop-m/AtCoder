# TLE!!
dots = []
gets.to_i.times do
  dots << gets.split.map(&:to_i)
end
ans = 0
dots.each do |x,y|
  dots.each do |xx,yy|
    ans = [ans,(x-xx).abs + (y-yy).abs].max
  end
end
puts ans
