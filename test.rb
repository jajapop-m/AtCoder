a,b,c=gets.split.map(&:to_i)
if a<c
  c-=a
  a=0
  if b<c
    b=0
  else
    b-=c
  end
else
  a-=c
end
puts [a,b].join ' '
