s = gets.chomp.split("").map(&:to_s)
t = gets.chomp.split("").map(&:to_s)
min = s.length
s.each_cons(t.length) do |si|
  count = 0
  si.each_with_index do |sii,idx|
    count += 1 if sii != t[idx]
  end
  min = [min,count].min
end

puts min
