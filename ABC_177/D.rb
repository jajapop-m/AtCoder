# 親を調べることで、同じグループにいるかを調べる木構造
class UnionFind
  attr_accessor :rank, :parent, :size
  def initialize(s)
    @rank = Array.new(s,0) # 木の高さを表す
    @parent = Array.new(s,&:itself) # 親はとりあえず自分自身としておく
    @size = Array.new(s,1) # 木の要素数を表す
  end

  def union(x,y)
    x_parent = get_parent(x)
    y_parent = get_parent(y)
    return if x_parent == y_parent

    # 高い方の木に結合したほうが親を調べる時に少ない計算量となる
    if rank[x_parent] > rank[y_parent]
      parent[y_parent] = x_parent # xの木にyを結合した
      size[x_parent] += size[y_parent] # xの木としてyの要素数を足し合わせておく
    else
      parent[x_parent] = y_parent
      size[y_parent] += size[x_parent]
      # 木の高さが同じ時だけ、木の高さが1つ増える
      rank[y_parent] += 1 if rank[x_parent]==rank[y_parent]
    end
  end

  # 親が自分自身のところまで登っていく。調べた要素にはすべて親を保存。
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
