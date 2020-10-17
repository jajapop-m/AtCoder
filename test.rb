n=gets.to_i
l=gets.split.map(&:to_i).sort
ans=0
(1...n-1).each do |i|
  (i+1...n).each do |j|
    idx=l[0...i].bsearch_index{|x|x>l[j]-l[i]}
    ans+=i-idx if idx
  end
end
p ans
