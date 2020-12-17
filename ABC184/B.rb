n,x=gets.split.map(&:to_i)
s=gets.chomp.split('')
(0...n).each do |i|
  if s[i]=='o'
    x += 1
  else
    x -= 1 if x-1>=0
  end
end
p x
