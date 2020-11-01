n,k=gets.split.map(&:to_i)
k=k.abs
count=0
a=[0,0]
(2..n*2).each {|m|a[m]=[m-1,2*n+1-m].min}
(2..n*2-k).each{|m|count+= a[m]*a[m+k]}
p count
