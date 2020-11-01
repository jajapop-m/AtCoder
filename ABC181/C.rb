n=gets.to_i
xy=n.times.map{gets.split.map(&:to_i)}
flag = false
(0...n-2).each do |i|
  (i+1...n-1).each do |j|
    x1,y1=xy[i]
    x2,y2=xy[j]
    (j+1...n).each do |k|
      flag=true if (x2-x1)*(xy[k][1]-y1)==(y2-y1)*(xy[k][0]-x1)
    end
  end
end
puts flag ? 'Yes' : 'No'
