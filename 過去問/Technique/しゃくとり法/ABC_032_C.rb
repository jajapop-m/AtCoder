n,k=gets.split.map(&:to_i)
s=n.times.map{gets.to_i}
if s.include?(0)
  p n
  exit
end
r,p,ans=0,1,0
(0...n).each do |l|
  while r<n&&p*s[r]<=k
    p*=s[r]
    r+=1
  end
  ans=[ans,r-l].max
  l==r ? r+=1 : p/=s[l]
end
p ans
