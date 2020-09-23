a,b=gets.split.map &:to_i
mi,m=[a,b].sort
(1..).each do |i|
  break if m*i > a*b
  if m*i % mi==0
    p m*i
    break
  end
end


# require 'prime'
# ans=1
# a,b=gets.split.map &:to_i
# aa=a.prime_division << [Float::INFINITY]
# bb=b.prime_division << [Float::INFINITY]
# la,lb=aa.size,bb.size
# ea,eb=aa.each,bb.each
# pa,pb=ea.next,eb.next
# (la+lb).times do
#   break if pa[0]==Float::INFINITY&&pb[0]==Float::INFINITY
#   if pa[0]==pb[0]
#     ans*=pa[0]**[pa[1],pb[1]].max
#     pa=ea.next
#     pb=eb.next
#   elsif pa[0] > pb[0]
#     ans*=pb[0]**pb[1]
#     pb=eb.next
#   else
#     ans*=pa[0]**pa[1]
#     pa=ea.next
#   end
# end
# p ans
