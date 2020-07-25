# N = gets.to_i
# a = gets.split.map &:to_i
# money = 1000
# stock = 0
#
# for n in 1..N-1
#   if a[n-1] < a[n]
#     stock = stock + money / a[n-1] * a[n]
#     money = money - money / a[n-1] * a[n-1]
#   elsif a[n-1] > a[n]
#     stock,money = money,stock
#   #   money = money + stock / a[n] * a[n-1]
#   #   stock = stock - stock / a[n] *a[n]
#   end
#   # stock = stock * a[n-1]/ a[n]
# end
#
# puts money + stock
