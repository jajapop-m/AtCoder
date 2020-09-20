n,*a=`dd`.split.map(&:to_i)
max2,max=a.sort[-2,2]
a.each {|ai|puts ai!=max ? max : max2}
