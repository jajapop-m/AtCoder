n,k=gets.split.map(&:to_i)
sunuke=[*1..n]
k.times do
  d=gets.to_i
  gets.split.map(&:to_i).each {|i|sunuke.delete(i)}
end
p sunuke.size
