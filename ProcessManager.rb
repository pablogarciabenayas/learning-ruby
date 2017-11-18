require 'Process_'

class ProcessManager
  def initialize
    @processList = []
    @processGroupedByName = Hash.new()
  end

  def addProcess(p)
    @processList.push(p)
  end

  def each_process()
    @processList.each() {|p| puts p}
  end

  def each_child_process(parent)
    childProcessList = @processList.find_all() {|p| p.parentId == parent.id}
    puts childProcessList
  end

  def top_memory_consumers()
    topMemoryConsumers = @processList.sort()
    return topMemoryConsumers.reverse()[0,10]
    #    return topMemoryConsumers.reverse()[0..9]
  end

  def memory()
    @processList.each {|k| add(@processGroupedByName,k.name,k.memory_size)}
    return @processGroupedByName 
  end

  def add(set,key,value)
    if set.include?(key)
      set[key] = set[key] + value
    else
      set[key] = value
    end
  end
end
