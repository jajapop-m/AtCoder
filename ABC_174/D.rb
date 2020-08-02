n = gets.to_i
c = gets.chomp.split("")
count = 0
c.each do |ci|
  count += 1 if ci == "R"
end
result = 0
for i in 0...count
  result += 1 if c[i] != "R"
end
puts result
