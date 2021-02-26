f=true
gets.chomp.each_char.with_index do |s,i|
  if i%2==0
    f=false if s == s.upcase
  else
    f=false unless s == s.upcase
  end
end
puts f ? "Yes" : "No"
