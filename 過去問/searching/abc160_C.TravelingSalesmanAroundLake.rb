k,n = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
max = 0
a.each_cons(2) {|i,j| max = j-i if j-i > max}
max = [k - a[-1] + a[0],max].max
puts k - max
