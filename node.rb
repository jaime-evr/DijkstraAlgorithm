class Node
  attr_accessor :value, :current, :visited, :neighbors

  def initialize(value)
    @value =  value
    @current = false
    @visited = false
  end
end
