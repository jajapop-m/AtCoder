n,k=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)
INF=2**60
left,right=0,INF
while right - left > 1
  mid = (left + right) / 2
  count = 0
  a.each{|i|count+=(i-1)/mid}
  count>k ? (left = mid) : (right = mid)
end
p right
