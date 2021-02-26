K = gets.to_i

val = nil
que = [*1..9]
K.times do
  val = que.shift
  (-1..1).each do |i|
    add = (val % 10) + i
    que << val*10 + add if add >= 0 && add <= 9
  end
end

puts val # K回目にキューから取り出した値がK番目に大きいルンルン数
