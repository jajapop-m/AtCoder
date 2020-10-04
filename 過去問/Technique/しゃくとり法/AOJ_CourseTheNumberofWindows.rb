n,q=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)
xl=gets.split.map(&:to_i)
xl.each do |x|
  ans=0
  sum=0
  r=0
  (0...n).each do |l|
    while r<n && sum+a[r]<=x
      sum+=a[r]
      r+=1
    end
    ans+=r-l
    sum-=a[l]
  end
  puts ans
end
