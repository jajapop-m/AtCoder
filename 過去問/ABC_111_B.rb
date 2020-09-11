n = gets.to_i
[0,111,222,333,444,555,666,777,888,999].each_cons(2) do |a,b|
  puts b if (a+1..b).include? n
end
