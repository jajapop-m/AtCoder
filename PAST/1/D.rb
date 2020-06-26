N = gets.to_i
array = Array.new(N+1,0)
dup = nil
N.times do |i|
  input = gets.to_i
  dup = input   if not array[input].zero?
  array[input] += 1
end
array.shift
result = nil
array.find.with_index{|value, index| result = index+1 if value == 0}
puts [dup, result].join(" ") if result
puts 'Correct' if not result
