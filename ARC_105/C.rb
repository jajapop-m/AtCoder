# n,m=gets.split.map(&:to_i)
# w=gets.split.map{|i|[i.to_i,false]}
# lv=m.times.map{gets.split.map(&:to_i)}
# min=lv.transpose[1].min
# if w.transpose[0].max > min
#   p -1
#   exit
# end
# max=lv.transpose[0].max
# p max*(n-1)
