n=gets.to_i
s=gets.chomp
puts s.size>n ? s[0,n]+"..." : s
