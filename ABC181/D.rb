# flag = false
# s=gets.chomp.split('')
# len=s.size
# list=(1...125).map{|i|(i*9).to_s.rjust(3,?0).split('')}
# if len>=3
#   f=false
#   list.each do |l|
#     flag=true if l.all?{|i|s.include?(i)}
#   end
#   flag=true if f
# elsif len==2
#   flag=true if (2...12).map{|i|(i*8).to_s.split('')}.map{|s|s.permutation.to_a}.flatten.include?(ori)
# else
#   flag=true if s==?8
# end
# puts flag ? 'Yes' : 'No'
