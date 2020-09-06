s = gets.chomp
t = gets.chomp
puts s == t ? "same" : s.downcase == t.downcase ?
"case-insensitive" : "different"
