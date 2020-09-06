n,m,q = gets.split.map(&:to_i)
correct_list = Array.new(n){[]}
scores = Array.new(m){n}
q.times do
  type, man, qes = gets.split.map(&:to_i)
  man -= 1
  qes -= 1 if qes
  case type
  when 1
    puts correct_list[man].inject(0){|a,b| a + scores[b]}
  when 2
    scores[qes] -= 1
    correct_list[man] << qes
  end
end
