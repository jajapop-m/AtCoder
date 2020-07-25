X = gets.to_i

if (400..599).include? X
 puts 8
elsif (600..799).include? X
  puts 7
elsif (800..999).include? X
  puts 6
elsif (1000..1199).include? X
  puts 5
elsif (1200..1399).include? X
  puts 4
elsif (1400..1599).include? X
  puts 3
elsif (1600..1799).include? X
  puts 2
elsif (1800..1999).include? X
  puts 1
end
