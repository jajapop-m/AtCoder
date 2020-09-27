l=gets.to_i.times.map{|i|gets.split.unshift(i+1)}
# m=l.sort{|a,b|[a[1],-a[2].to_i] <=> [b[1],-b[2].to_i]}
m=l.sort_by{|a|[a[1],-a[2].to_i]}
m.each{|a|puts a[0]}
