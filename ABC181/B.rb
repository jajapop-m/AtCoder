sum=0
gets.to_i.times do
  a,b=gets.split.map(&:to_i)
  sum+=(b-a+1)*(2*a+b-a)/2
end
p sum
