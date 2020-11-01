Max=100_000
def bucket_sort(a)
  num=Array.new(Max,0)
  a.each{|n|num[n]+=1}
  sum=[0]
  (1...Max).each{|i|sum[i]=sum[i-1]+num[i]}
  a2=[]
  (0...a.size).reverse_each {|i|a2[sum[a[i]]-=1]=a[i]}
  a2
end
puts bucket_sort(gets.split.map(&:to_i)).join ' '
