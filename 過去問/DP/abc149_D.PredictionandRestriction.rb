# 貪欲法
n,k = gets.split.map(&:to_i)
r,s,p = gets.split.map(&:to_i)
score = Array.new(n){[]*3}
R,S,P = 0,1,2
ans = 0

gets.chomp.split("").each_with_index do |t,i|
  sr, ss, sp = 0,0,0
  sr = r if t == "s"
  ss = s if t == "p"
  sp = p if t == "r"
  if i-k >= 0
    sr = 0 if score[i-k][R] != 0
    ss = 0 if score[i-k][S] != 0
    sp = 0 if score[i-k][P] != 0
  end
  score[i][R] = sr
  score[i][S] = ss
  score[i][P] = sp
  ans += sr + ss + sp
end
p ans
