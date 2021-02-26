n=gets.to_i

s=n.times.map{gets.chomp}.group_by{|t|t =~ /^!/}
memo = {}
if s[nil].nil? || s[0].nil?
  puts 'satisfiable'
  exit
end
s[0].each{|m|memo[m]=true}
s[nil]&.each do |u|
  if memo["!#{u}"]
    puts u
    exit
  end
end
puts 'satisfiable'
