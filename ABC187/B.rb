n=gets.to_i
xy=n.times.map{gets.split.map(&:to_f)}
ans=0
(0...n-1).each do |i|
  (i+1...n).each do |j|
    ans +=1 if  ((xy[i][1]-xy[j][1]) / (xy[i][0]-xy[j][0])).abs <= 1
  end
end
p ans
