_,_,m = gets.split.map(&:to_i)
list_a = gets.split.map(&:to_i)
list_b = gets.split.map(&:to_i)
min = list_a.min + list_b.min
m.times do
  ia,ib,d = gets.split.map(&:to_i)
  min = [min,list_a[ia-1] + list_b[ib-1] - d].min
end
puts min
