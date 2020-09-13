require 'prime'

N = gets.to_i
division_result = N.prime_division
count = 0
division_result_count = division_result.map{|a| a[1]}

division_result_count.each do |result|
  for i in 1..10 ** 12
    result = result - i
    break if result < 0
    count += 1
  end
end

puts count
