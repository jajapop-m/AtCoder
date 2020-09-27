n,k=gets.split.map(&:to_i)
a=n.times.map{gets.to_i}
l = Array.new(n){0}
l[0] = 1
s = 1
(1...n).each do |i|
  (1..s).each do |j|
    break if i-j<0
    if (a[i-j] - a[i]).abs <= k
      l[i] = [l[i-j] + 1,l[i]].max
    else
      s += 1
    end
  end
end

p l[n-1]


# class Number
#   attr_accessor :num,:parent
#   def initialize(n)
#     @num = n
#   end
# end
#
# n,k=gets.split.map(&:to_i)
# len = 0
# a = []
# a << Number.new(gets.to_i)
#
# (1...n).each do |i|
#   n = Number.new(gets.to_i)
#   if (a[i-1].num - n.num).abs <= k
#     len +=1
#     a << n
#     n.parent = a[i-1]
#   else
#     (0..i-1).reverse_each do |j|
#       if (a[j].num - n.mum).abs <= k
#         a << n
#         n.paren = a[j]
#         break
#       end
#     end
#
#   end
#
# end
