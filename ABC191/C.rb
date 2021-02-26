h,w=gets.split.map(&:to_i)
s=h.times.map{gets.chomp.split('')}
ans=0
(0...h-1).each do |i|
  (0...w-1).each do |j|
    count=0
    [[0,0],[0,1],[1,0],[1,1]].each do |n,m|
      count+=1 if s[i+n][j+m]=="#"
    end
    ans+=1 if count==1 || count==3
  end
end
p ans
