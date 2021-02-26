# t=gets.to_i
# ans=[]
# t.times do
#   n,s,k=gets.split.map(&:to_i)
#   count=0
#   while true
#     p=(n-s)%k
#     if p==0
#       ans << count+(n-s)/k
#       break
#     elsif p==k-p
#       ans << -1
#       break
#     else
#       s=k-p
#       count+=(n-s)/k
#     end
#   end
# end
# puts ans
