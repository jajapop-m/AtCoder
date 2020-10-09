s=gets.chomp
q=gets.to_i
list=[[0,?2,s]]
count=0
q.times do
  t,f,c=gets.split
  t==?1 ? count+=1 : list << [count%2,f,c]
end
ans=[]
list.each do |pp,ff,cc|
  cc=cc.reverse if pp==?1
  (ff.to_i+pp)%2==1 ? ans.unshift(cc) : ans.push(cc)
end
puts count%2==0 ?  ans.join : ans.join.reverse
