a=0
(1..gets.to_i).each{|i|a+=i if i%3!=0&&i%5!=0}
p a
