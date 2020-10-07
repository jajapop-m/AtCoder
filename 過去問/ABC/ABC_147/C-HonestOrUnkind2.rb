n=gets.to_i
xy=n.times.map{gets.to_i.times.map{gets.split.map(&:to_i)}}
ans=0
(0...2**n).each do |i|
  honests=(0...n).each.map{|j| j if i & 1 << j != 0}.compact
  flag=true
  honests.each do |k|
    xy[k].each do |x,y|
      flag=false if y==0 && honests.include?(x-1) ||
                    y==1 && !honests.include?(x-1)
    end
  end
  ans=[ans,honests.size].max if flag
end
p ans
