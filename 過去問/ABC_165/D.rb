a,b,n=gets.split.map(&:to_i)
x=[b-1,n].min
p (a*x/b).floor-a*(x/b).floor
