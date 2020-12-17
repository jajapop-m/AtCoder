n = gets.to_i
t = gets.chomp.split('')
f = true
if t.size == 1
  p t == ['1'] ? 10**10*2 : 10**10
elsif t.size ==2
  p t==['0','0'] ? 0 : t==['0','1'] ? 10**10-1 : 10**10
else
  c = t[0,3]
  if c.count('0') != 1
    p 0
    exit
  end
  t.each_slice(3) do |ci|
    ci.each_with_index do |d,i|
      if d != c[i]
        p 0
        exit
      end
    end
  end
  count = t.count('0')
  count -= 1 if t[-1]=='0'
  p 10**10-count
end
