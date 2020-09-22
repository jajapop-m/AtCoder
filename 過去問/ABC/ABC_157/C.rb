n,m=gets.split.map(&:to_i)
a=m.times.map{gets.split.map(&:to_i)}
(0..10**n).each do |i|
  s=i.to_s
  next if s.size!=n
  flag=true
  a.each do |i,j|
    flag=false if s[i-1]!=j.to_s
  end
  if flag
    p i
    exit
  end
end
p -1

# n,m=gets.split.map(&:to_i)
# b=Array.new(n)
# m.times do
#   s,c=gets.split.map(&:to_i)
#   if [s,c]==[1,0]&&n!=1
#     p -1
#     exit
#   end
#   if !b[s-1] || b[s-1]==c
#     b[s-1]=c
#   else
#     p -1
#     exit
#   end
# end
# b[0]=1 if !b[0]&&n!=1
# b.each{|s|print s ? s : 0}
