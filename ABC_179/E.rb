n,x,m=gets.split.map(&:to_i)
dp=[]
dp[1]=x
sum=[]
sum[1] = x
(2..n).each do |i|
  p = dp[i-1]**2%m
  # if dp.include?(p)
  #   sum[n]=sum[i-1]
  #   l = [*dp.index(p)+1..i].length
  #   sum[n]+=((n-i-1)/l)*dp[dp.index(p)..i].sum
  #   sum[n]+=dp[dp.index(p),((n-i+1)%l)].sum
  #   break
  # end
  break sum[n] = sum[i-1] if p==0
  dp[i] = p
  sum[i] = sum[i-1] + dp[i]
end
p sum[n]
