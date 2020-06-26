include Math
X = gets.to_i

# $count = 0
#
# def move(x, y, count)
#   theta = (PI / 2) + X * ( PI / 180 ) * $count
#   complex = Complex(1 - x, 0 - y) * Complex(cos(theta).to_c,sin(theta)to_c) + Complex(x, y)
#   p complex
#   x = complex.real
#   y = complex.imag
#   return $count if x.to_i == 0 && y.to_i == 0
#   $count += 1
#   move(x, y, $count)
# end
#
# move(0, 0, $count)
# p $count
#
# #
# # theta = (PI / 2) + X * ( PI / 180 ) * $count
# # x = (1-x) * cos(theta) + (y * sin(theta)) + x
# # p x.to_i
# # y = (1-x) * sin(theta) - y * cos(theta) + y

result = 0
for i in 1..Float::INFINITY
  break result = i if i * X % 360 == 0
end
puts result
