n,k=gets.split.map(&:to_i)
s=gets.split('').map(&:to_i)
ans=res=1
r=0
count= s[0]==0?1:0
(0...n).each do |l|
  while r<n-1
    break if count>=2*k&&s[r+1]==0
    count+=1 if s[r+1]!=s[r]
    r+=1
    res+=1
  end
  ans=[ans,res].max
  count-=2 if l!=n-1 && s[l+1]!=s[l] && s[l+1]==1
  res-=1
end
p ans
