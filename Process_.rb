class Process_
  def initialize(id,parentId,name,memorySize)
    @id = id
    @parentId= parentId
    @name = name
    @memory_size = memorySize
  end
  
  attr_reader :id, :parentId, :name, :memory_size
  
  def to_s
    "#{@name}, #{@id}, #{@parentId}, #{@memory_size}"
  end
  
  
  private
  
  def <=> (other)
    @memory_size <=> other.memory_size
  end
end
