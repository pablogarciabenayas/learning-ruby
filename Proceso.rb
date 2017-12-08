class Proceso
  def initialize(id,p_id,name,mem_size)
    @id = id
    @parent_id= p_id
    @name = name
    @memory_size = mem_size
  end
  
  attr_reader :id, :parent_id, :name, :memory_size
  
  def to_s
    "#{@name}, #{@id}, #{@parent_id}, #{@memory_size}"
  end
  
  
  private
  
  def <=> (other)
    @memory_size <=> other.memory_size
  end
end
