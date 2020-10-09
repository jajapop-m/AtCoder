n=gets.to_i
p=gets.split.map(&:to_i)
s=p.sum
dp=Array.new(s+1){0}
dp[0]=1
(0...n).each do |i|
  (0..s).reverse_each do |j|
    dp[j]|=dp[j-p[i]] if j-p[i]>=0
  end
end
p dp.sum
