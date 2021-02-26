a,b,c,d=gets.split.map(&:to_i)
puts ((a*b)..(a*c)).include?(d) ? "No" : "Yes"
