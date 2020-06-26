N, K = gets.split.map(&:to_i)
puts gets.split.map(&:to_i).sort.shift(K).sum
