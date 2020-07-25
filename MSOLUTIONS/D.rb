N = gets.to_i
a = gets.split.map &:to_i
money = 1000
stock = 0

for n in 1..N-1
  if a[n-1] < a[n]
    stock = money / a[n-1]
    money = money + (a[n] - a[n-1]) * stock
  end
end

puts money
