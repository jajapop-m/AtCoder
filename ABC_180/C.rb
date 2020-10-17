require 'prime'
puts(gets.to_i==1?1:$_.to_i.prime_division.map{|e|(0..e[1]).map{|i|e[0]**i}}.inject{|p,q|p.product(q)}.map{|a|[a].flatten.inject(:*)}.sort)
