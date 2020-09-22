n,a,b=gets.split.map(&:to_i)
c=n./a+b
r=n.%a+b
p c*a+[a,r].min
