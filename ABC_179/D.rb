n,k=gets.split.map(&:to_i)
l=k.times.map{gets.split.map(&:to_i)}
dp=Array.new(n+1,0)
dp[1]=1
sum=[0,1]
(2..n).each do |i|
  l.each do |a,b|
    suma=i-b-1>0?sum[i-b-1]:0
    sumb=i-a>0?sum[i-a]:0
    dp[i]+=(sumb-suma)%998244353
  end
  sum[i]=sum[i-1]+dp[i]
end
p dp[n]%998244353
