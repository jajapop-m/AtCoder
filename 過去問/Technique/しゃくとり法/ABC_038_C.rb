n=gets.to_i
a=gets.split.map(&:to_i)
ans=0
r=0
(0...n).each do |l|
  while r<n && (r<=l || a[r-1] < a[r])
    r+=1
  end
  ans+=r-l
  r+=1 if r==l
end
p ans
