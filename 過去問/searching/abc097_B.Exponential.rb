x = gets.to_i
list = [1]
(2..x).each do |p|
  (2..x).each do |b|
    num = b**p
    break if num > x
    list << num
  end
end
puts list.sort[-1]
