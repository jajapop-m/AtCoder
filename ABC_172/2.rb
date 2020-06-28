S = gets.split("").map &:to_s
T = gets.split("").map &:to_s
count = 0
S.count.times do |i|
  count += 1 if S[i] != T[i]
end

puts count
