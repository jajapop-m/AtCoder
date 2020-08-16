N = gets.to_i
l = gets.split.map(&:to_i)
$count = 0

# p l

def check(i,j,k)
  a = [i,j,k].sort
  $count += 1 if a[0] + a[1] > a[2] && a[1] - a[0] < a[2]
  # p [i,j,k] if a[0] + a[1] > a[2] && a[1] - a[0] < a[2]
end

for i in 0...N
  for j in (i+1)...N
    for k in (j+1)...N
      # p [i,j,k]
      check(l[i],l[j],l[k]) if l[i] != l[j] && l[i] != l[k] && l[j] != l[k]
    end
  end
end


puts $count
