n,k=gets.split.map(&:to_i)
n%=k
p (n-k).abs<n ? (n-k).abs : n
