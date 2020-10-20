n,m=gets.split.map(&:to_i)
k=Array.new(n){[]}
m.times do |i|
  ki,*s=gets.split.map(&:to_i)
  s.each{|si|k[si-1]<<i} # i番目のスイッチが繋がれた電球番号を一旦保存
end
k=k.map do |s|
  sw=0
  s.each{|si|sw= sw | 1 << si} # i番目のスイッチが繋がれた電球番号を2進数表現
  sw
end
p=gets.split.reverse.join.to_i(2) # pを2進数表現
ans=0
(0...2**n).each do |c|
  ki=0
  (0...n).each do |i|
    ki=ki^k[i] if c & 1 << i != 0 # bit全探索でONにしたスイッチをXOR
  end
  ans+=1 if ki==p # 最終的な0と1かをpと比較する
end
p ans
