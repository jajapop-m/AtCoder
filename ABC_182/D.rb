n=gets.to_i
a=gets.split.map(&:to_i)
sum=[]
a.inject(0){|m,n|sum<< m+n&&m+n}
p sum

# sum=[a[0]]
# (1...n).each{|i|sum[i]=sum[i-1]+a[i]}
# sum2=[sum[0]]
# (1...n).each{|i|sum2[i]=sum2[i-1]+sum[i]}
# max=[sum[0]]
# (1...n).each{|i|max[i]=[sum[i],max[i-1]].max}
# ans=0
# max[-1]=0
# (0...n).each{|i|ans=[sum2[i],max[i]+sum2[i],ans].max}
# p ans
