a,b,c,d=gets.split.map(&:to_i)
m = c.lcm(d)
p (b-a+1)-((b/c-(a-1)/c)+(b/d-(a-1)/d)-(b/m-(a-1)/m))
