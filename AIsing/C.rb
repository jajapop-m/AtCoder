N = gets.to_i
a = Array.new(10**6,0)
for x in 1..100
  for y in 1..100
    for z in 1..100
      n = x**2 + y**2 + z**2 + x*y + y*z + z*x
      a[n] += 1
    end
  end
end
a.shift
a.each_with_index do |n,i|
  puts n if i <= N - 1
end
