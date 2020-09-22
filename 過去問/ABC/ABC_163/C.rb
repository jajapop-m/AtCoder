n=gets.to_i
a=gets.split.map(&:to_i)
ans=Hash.new(0)
a.each{|i|ans[i]+=1}
(1..n).each{|i|puts ans[i]}
