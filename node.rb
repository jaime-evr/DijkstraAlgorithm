class Node
  attr_accessor :value, :initial, :current, :visited, :neighbors

  def initialize(value)
    @value =  value
    @initial = false
    @current = false
    @visited = false
    @neighbors = []
  end
end