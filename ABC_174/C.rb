# K = gets.to_i
#
# k = K
# for i in 1..10000000
#   break puts (i*k).to_s.count("7") unless (k * i).to_s.match(/[^7]/)
# end
#
#
#
# # def solve
#   n = 0
#   return -1 if K % 2 == 0
#   (0..999983).each do |i|
#     n += 7 * (10**i)
#     next if K > n
#     return i+1 if n % K == 0
#   end
#   -1
# end
#
# puts solve

# require 'prime'
# res = []
# sevens = []
# n = 7
# seven = ""
# sevens = []
# 999982.times do |i|
#   seven << "7"
#   sevens << seven.to_i
# end
# p sevens
# sevens.each_with_index do |s,idx|
#   a = s.prime_division
#   a.each_with_index do |b|
#     res[b[0]] ||= idx + 1
#   end
# end
# if res[K].nil?
#   puts -1
# else
#   puts res[K]
# end
