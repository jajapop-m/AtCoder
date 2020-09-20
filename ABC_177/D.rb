class UnionFind
  attr_accessor :rank, :parent, :size
  def initialize(s)
    @rank = Array.new(s,0)
    @parent = Array.new(s,&:itself)
    @size = Array.new(s,1)
  end

  def union(x,y)
    x_parent = get_parent(x)
    y_parent = get_parent(y)
    return if x_parent == y_parent

    if rank[x_parent] > rank[y_parent]
      parent[y_parent] = x_parent
      size[x_parent] += size[y_parent]
    else
      parent[x_parent] = y_parent
      size[y_parent] += size[x_parent]
      rank[y_parent] += 1 if rank[x_parent]==rank[y_parent]
    end
  end

  def get_parent(id)
    parent[id] == id ? id : parent[id] = get_parent(parent[id])
  end
end

n,m=gets.split.map(&:to_i)
u = UnionFind.new(n)
m.times do
  a,b = gets.split.map(&:to_i)
  u.union(a-1,b-1)
end
p u.size.max


# TLE!!

# require 'set'
# n,m = gets.split.map(&:to_i)
# check = Array.new(n+1){Set.new}
# max = 1
# m.times do
#   a,b = gets.split.map(&:to_i)
#   check[b].add?(a)
#   check[a].add?(b)
# end
# ans = 0
# check.each do |c|
#   ans = [ans,c.length+1].max
# end
# p check
# p ans
