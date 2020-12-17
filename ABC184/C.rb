r1,c1 = gets.split.map(&:to_i)
r2,c2 = gets.split.map(&:to_i)
if [r1,c1]==[r2,c2]
  p 0
elsif ((r2-r1).abs-(c2-c1).abs).abs==0
  p 1
elsif (r1-r2).abs+(c1-c2).abs<=3
  p 1
elsif (r1-r2).abs+(c1-c2).abs<=6
  p 2
elsif ((r1-r2).abs+(c1-c2).abs)%2==1&&((r2-r1).abs-(c2-c1).abs).abs>3
  p 3
else
  p 2
end
