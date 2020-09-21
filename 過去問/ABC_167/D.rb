n,k=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)
a.unshift nil
b=[]
i=1
list = []
loop do
  break if b[i]
  b[i]=true
  list << a[i]
  i=a[i]
end
c = 0
list_dup=list.dup
loop do
  break if list[0]==a[i]
  list.shift
  c+=1
end
if k > c
  k-=c
  p list[k%list.size-1]
else
  p list_dup[k-1]
end
