require 'prime'
n=gets.to_i
a=gets.split.map(&:to_i)
min=Float::INFINITY
a.each do |i|
  min=0 if i%2==1
  i.prime_division.each do |m,n|
    min=[min,n].min if m==2
  end
end
p min
