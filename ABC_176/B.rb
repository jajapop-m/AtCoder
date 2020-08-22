n = gets.split("").map(&:to_i).sum
puts n % 9 == 0 ? "Yes" : "No"
