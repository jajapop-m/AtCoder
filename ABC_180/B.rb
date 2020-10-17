n=gets.to_i
x=gets.split.map{|x|x.to_f.abs}
puts x.inject(0){|a,b|a+b}
puts Math.sqrt(x.inject(0){|a,b|a+b**2})
puts x.max
