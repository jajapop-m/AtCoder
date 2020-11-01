s=gets.chomp
l=s.size
c0,c1,ans=0,0,0
s.each_char do |si|
  si==?0 ? c0+=1 : c1+=1
  if c0>0&&c1>0
    ans+=2
    c0-=1
    c1-=1
  end
end
p ans
