n,x,t = gets.split.map(&:to_i)
puts ((n / x) + 1) * t if n % x != 0
puts (n / x) * t if n % x == 0
