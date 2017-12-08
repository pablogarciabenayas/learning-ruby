require 'Proceso'

class ProcessManager
  def initialize
    @process_list = []
  end

  def add_process(p)
    @process_list.push(p)
  end

  def each_process()
    @process_list.each do |p|
      yield p
    end
  end

  def each_child_process(parent)
    child_list = @process_list.find_all() {|p| p.parent_id == parent.id}
    child_list.each do |p|
      yield p
      each_child_process(p) do |child_of_child|
        yield child_of_child
      end 
    end
  end

  def top_memory_consumers()
    consumers_list = @process_list.sort()
    return consumers_list.reverse()[0,10]
  end

  def memory()
    process_grouped_by_name = Hash.new()
    @process_list.each {|p| add_to_set(process_grouped_by_name,p.name,p.memory_size)}
    return process_grouped_by_name
  end

  def add_to_set(set,key,value)
    if set.include?(key)
      set[key] = set[key] + value
    else
      set[key] = value
    end
  end
end
