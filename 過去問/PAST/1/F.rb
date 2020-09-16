S = gets.split("").map &:to_s

flag = 0
words = []
word = ""
S.each do |s|
  if flag != 0 && flag % 2 == 0
    words << word
    word = ""
  end
  if s == s.upcase
    word += s
    flag += 1
  elsif s != s.upcase
    word += s
  end
end

puts words.sort_by{|a| a.downcase}.join
