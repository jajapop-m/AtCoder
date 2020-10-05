n,k=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)
ans=0
sum=0
r=0
(0...n).each do |l|
  while r<n && sum<k
    sum+=a[r]
    r+=1
    break if sum>=k
  end
  ans+=n+1-r if sum >=k
  r+=1 if r==l
  sum-=a[l]
end
p ans
