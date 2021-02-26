a,b,c=gets.split.map(&:to_i)
if c==0
  b+=1
else
  a+=1
end
if a==b
  puts c==0 ? "Takahashi" : "Aoki"
  exit
end
puts a<b ? "Aoki" : "Takahashi"
