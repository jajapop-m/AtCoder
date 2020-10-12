n=gets.to_i
a=gets.split.map(&:to_i)
min=a.min
a.each {|n|min=n%min if n%min != 0}
p min
