K = gets.to_i

def rec(d, val, all)
  all << val
  return if d == 10

  for i in -1..1
    add = (val % 10) + i
    rec(d+1,val*10 + add, all) if add >= 0 && add <=9
  end
end

all = []

[*1..9].each do |i|
  rec(0,i,all)
end

puts all.sort[K-1]
