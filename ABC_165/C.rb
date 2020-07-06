N,M,Q = gets.split.map(&:to_i)
a = []
Q.times do |i|
  a[i] = gets.split.map(&:to_i)
end

def score(array,a)
  tmp = 0
  for ai,bi,ci,di in a
    tmp += di if array[bi-1] - array[ai-1] == ci
  end
  tmp
end

def dfs(array,a)
  l = array.length
  return score(array,a) if l == N
  result = 0
  l > 0 ? (prev_last = array[-1]) : (prev_last = 0)
  for v in prev_last...M
    array.push(v)
    result = [result, dfs(array,a)].max
    array.pop
  end
  result
end

puts dfs(Array.new,a)
