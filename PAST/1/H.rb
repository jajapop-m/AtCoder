# TLEから改善せず。ACしていません！

N = gets.to_i
c = gets.split.map(&:to_i)
odd_min = Float::INFINITY
c.each_slice(2) {|odd,_| odd_min = odd_min > odd ? odd : odd_min}
all_min = c.min

Q = gets.to_i
count = 0

Q.times do
  q = gets.split.map(&:to_i)
  case q[0]
  when 1
    item,num = q[1..2]
    next if c[item-1] < num
    c[item-1] -= num
    count += num
    ci = c[item-1]
    all_min = all_min > ci ? ci : all_min
    odd_min = odd_min > ci ? ci : odd_min if (item-1) % 2 == 0
  when 2
    num = q[1]
    next if odd_min < num
    (0...(N+1)/2).each {|i| c[i*2] -= num}

    count += num*((N+1)/2)
    odd_min -= num
    all_min = all_min > odd_min ? odd_min : all_min
  when 3
    num = q[1]
    next if all_min < num
    (0...N).each {|i| c[i] -= num}

    count += num*N
    all_min -= num
    odd_min -= num
  end
end

puts count
