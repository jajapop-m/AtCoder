# TLE!!
N = gets.to_i
def solve(m)
  return $count += 1 if m == 0
  return if m <= 2
  (3..m).each do |i|
    solve(m-i)
  end
end
$count = 0
solve(N)
puts $count % (10**9 + 7)
