n=gets.to_i
a=gets.split.map(&:to_i).sort
s=[a[0]]
(1...n).each {|i|s[i]=s[i-1]+a[i]}
ans=0
a.each_with_index do |num,i|
  rsum=s[i-1] if i>0
  rsum||=0
  lsum=s[-1]-s[i]
  ans+=num-rsum+lsum-num
end
p ans
