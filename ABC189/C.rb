n=gets.to_i
a=gets.split.map(&:to_i)
max=0
(0...n).each do |i|
  min=a[i]
  (i...n).each do |j|
    min=[min,a[j]].min
    max=[max,(j-i+1)*min].max
  end
end
p max
