# n=gets.to_i
# imos=Array.new(2*n+2,0)
# ab=n.times.map{gets.split.map(&:to_i)}
# ab.each do |a,b|
#   if a>b
#     puts :No
#     exit
#   end
#   imos[a]+=1
#   imos[b+1]-=1
# end
# (1..2*n+1).each{|i|imos[i]+=imos[i-1]}
# if imos.count(2)==0
#   puts :Yes
#   exit
# end
# imos=imos.map{|n|n==1?1:0}
# (1..2*n+1).each{|i|imos[i]+=imos[i-1]}
# flag=true
# ab.each do |a,b|
#   flag=false if imos[b]==imos[a-1]
# end
# puts flag ? :Yes : :No
