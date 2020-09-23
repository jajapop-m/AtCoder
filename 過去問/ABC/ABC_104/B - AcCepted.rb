s=gets.chomp
flag=true
l=s.size
flag=false if s[0]!=?A
flag=false if s[1].upcase==s[1]
c=0
(2...l-1).each do |i|
  if s[i].upcase==s[i]
    c+=1 if s[i]==?C
    flag=false if s[i]!=?C
  end
end
flag=false if c!=1
flag=false if s[l-1].upcase==s[l-1]
puts flag ? 'AC':'WA'
