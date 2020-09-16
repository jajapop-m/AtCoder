# TLE !!

class Worker
  attr_accessor :id,:boss
  def initialize(id,boss)
    @id = id
    @boss = Array.new
    @boss = boss
  end
end

class WorkersList < Array
  def initialize
    super
    @boss_list = Array.new(N+1){Array.new}
  end

  # def suprevisor?(one,another)
  #   return true  if self[one].boss == self[another].id
  #   return false if self[one].boss == -1
  #   self.suprevisor?(self[one].boss,another)
  # end

  def find_boss?(one,boss)
    @boss_list[one].include? boss
  end

  def create_boss_list
    (1...self.length).each do |id|
      add_boss_list(id,id)
    end
  end

  def add_boss_list(id,check_id)
    @boss_list[id] << self[check_id].boss
    return @boss_list[id].sort! if self[check_id].boss == -1
    add_boss_list(id,self[check_id].boss)
  end
end

N = gets.to_i
list = WorkersList.new
list << nil
N.times do |i|
  list << Worker.new(i+1,gets.to_i)
end
list.create_boss_list
Q = gets.to_i
Q.times do
  a,b = gets.split.map(&:to_i)
  puts list.find_boss?(a,b) ? "Yes" : "No"
  # puts list.suprevisor?(a,b) ? "Yes" : "No"
end
