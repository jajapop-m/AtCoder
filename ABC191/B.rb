n,x=gets.split.map(&:to_i)
a=gets.split.map(&:to_i).delete_if{|n|n==x}
puts a.join(" ")
