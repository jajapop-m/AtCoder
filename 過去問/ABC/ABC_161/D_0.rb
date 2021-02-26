# 再帰関数DFS
# v=現在の頂点
# Seen=訪問済を記録する連想配列
# G=次の頂点を記録した配列
def dfs(v)
  Seen[v]=true # vを訪問済にする
  G[v].each do |next_v|  # 現在の頂点から行ける頂点を探索
    next if Seen[next_v] # 訪問済みならスキップ
    dfs(next_v)          # 再帰呼び出し
  end
end

G=[[1,2,3],[4,5],[6,7],[8,9],[10],[11],[12],[13],[14],[15],[],[],[],[],[],[]]
Seen = Hash.new(false)
# dfs(0)

# Stack DFS
def iterative_dfs(v)
  stack=[]       # 空のスタックを用意
  Seen[v]=true   # vを訪問済みにする
  stack << v     # v をstackに入れる
  while !stack.empty? # stackが空になるまでループ
    v = stack.pop     # stackの最後からpop
    G[v].each do |next_v|   # 次の頂点を探索
      unless Seen[next_v]   # 未探索なら
        Seen[next_v] = true # 探索済みにし
        stack << next_v     # stackに積む
      end
    end
  end
end
G=[[1,2,3],[4,5],[6,7],[8,9],[10],[11],[12],[13],[14],[15],[],[],[],[],[],[]]
Seen = Hash.new(false)
iterative_dfs(0)

def bfs(v)
  queue=[]      # 空のキューを用意
  Seen[v]=true  # vを訪問済みにする
  queue << v    # vをqueueに入れる
  while !queue.empty? # queueが空になるまでループ
    v = queue.shift   # queueの最初からshift
    G[v].each do |next_v|   # 次の頂点を探索
      unless Seen[next_v]   # 未探索なら
        Seen[next_v] = true # 探索済みにし
        queue << next_v     # queueに積む
      end
    end
  end
end
G=[[1,2,3],[4,5],[6,7],[8,9],[10],[11],[12],[13],[14],[15],[],[],[],[],[],[]]
Seen = Hash.new(false)
bfs(0)
