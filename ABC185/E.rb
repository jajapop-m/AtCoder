# n,m=gets.split.map(&:to_i)
# a=gets.split.map(&:to_i)
# b=gets.split.map(&:to_i)
# a,b = n < m ? [a,b] : [b,a]
# count = (n-m).abs
# ans = count
# [n,m].min.times do |i|
#   next if a[i]==b[i]
#   (1..count).each do |j|
#     if a[i]==b[j]
#       count-=j
#
#     end
#   end
# end
