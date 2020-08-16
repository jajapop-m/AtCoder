# 不正解!!

n,k = gets.split.map(&:to_i)
p = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)

max = c.max
now_index = c.find_index(max)
ary = []
ary << max

(k-1).times do
  next_index = p[now_index]
  ary << ary[-1] + c[next_index-1]
  now_index = p.find_index(p[next_index-1])
end

puts ary.max
