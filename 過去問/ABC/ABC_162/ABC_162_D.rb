n=gets.to_i
s=gets.chomp.split('')
r,g,b=0,0,0
s.each {|si| si=='R'? r+=1 : si=='G' ? g+=1 : b+=1}
count=0
(1..n/2).each do |j|
  (0...n-2).each do |i|
    break unless s[i+2*j]
    count+=1 if s[i]!=s[i+j]&&s[i+j]!=s[i+2*j]&&s[i]!=s[i+2*j]
  end
end
p r*g*b-count
