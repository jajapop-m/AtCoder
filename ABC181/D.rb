# flag = false
# s=gets.chomp
# len=s.size
# ori=Array.new(10,0)
# com=Array.new(125){Array.new(10,0)}
# s=s.rjust(3,?0).each_char{|s|ori[s.to_i]+=1}
# if len>=3
#   (1...125).each do |i|
#     (i*8).to_s.rjust(3,?0).each_char do |s|
#       com[i][s.to_i]+=1
#     end
#   end
#   (1...125).each do |i|
#     f=true
#     (0...10).each do |j|
#       f=false if com[i][j] > ori[j]
#     end
#     flag=true if f
#   end
# elsif len==2
#   flag=true if (2...12).map{|i|(i*8).to_s.split('')}.map{|s|s.permutation.to_a}.flatten.include?(ori)
# else
#   flag=true if s==?8
# end
# puts flag ? 'Yes' : 'No'
