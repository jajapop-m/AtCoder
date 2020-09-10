a,r,n = gets.split.map(&:to_i)
puts a * r ** (n-1) > 10 ** 9 ? "large" : a * r ** (n-1)
