def p?(s)
  s==s.reverse
end
s=gets.chomp
l=s.size
puts p?(s)&&p?(s[0...(l-1)/2])&&p?(s[(l+3)/2-1...l]) ? 'Yes':'No'
