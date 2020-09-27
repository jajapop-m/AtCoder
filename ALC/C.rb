class UnionFind
  attr_accessor :group
  def initialize(size)
    @rank = Array.new(size, 0)
    @parent = Array.new(size, &:itself)
    @group = size
  end

  def unite(id_x, id_y)
    id_x-=1
    id_y-=1
    x_parent = get_parent(id_x)
    y_parent = get_parent(id_y)
    return if x_parent == y_parent
    @group-=1
    if @rank[x_parent] > @rank[y_parent]
      @parent[y_parent] = x_parent
    else
      @parent[x_parent] = y_parent
      @rank[y_parent] += 1 if @rank[x_parent] == @rank[y_parent]
    end
  end

  def get_parent(id_x)
    @parent[id_x] == id_x ? id_x : (@parent[id_x] = get_parent(@parent[id_x]))
  end

  def same_parent?(id_x, id_y)
    get_parent(id_x) == get_parent(id_y)
  end
end

n,m=gets.split.map(&:to_i)
u=UnionFind.new(n)
m.times do
  x,y=gets.split.map(&:to_i)
  u.unite(x,y)
end
p u.group-1
