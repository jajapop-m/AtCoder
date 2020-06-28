N,M,k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
asum=[0]
bsum=[0]
a.each{|x|asum << asum[-1]+x}
b.each{|y|bsum << bsum[-1]+y}
# ans=0
# j=M
# c.each_with_index do |c,i|
#     break if c > k
#     while d[j] > k-c
#         j -= 1
#     end
#     ans=[ans,i+j].max
# end
# puts ans


i = 0
j = 0
ans = [0, 0]
asum.each do |as|
  break if as > k

  j = bsum.bsearch_index { |bs| as + bs > k }
  j ||= M + 1
  j -= 1 # bsearchでoverした分を引く
  ans = [i, j] if i + j > ans.sum
  i += 1
end

puts ans.sum
