n = gets.to_i
a = gets.split.map(&:to_i)
max = 0
step = 0
a.each do |ai|
  step += max - ai if max > ai
  max = [max,ai].max
end
puts step
