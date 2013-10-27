require 'pry'
require './graph'
require './node'
require './dijkstra'

g = Graph.new 6, 0, 5

neighborhood = [
  [{node: 2, val: 7}, {node: 3, val: 9}, {node: 6, val: 14}],
  [{node: 1, val: 7}, {node: 3, val: 10}, {node: 4, val: 15}],
  [{node: 1, val: 9}, {node: 2, val: 10}, {node: 4, val: 11}, {node: 6, val: 2}],
  [{node: 2, val: 15}, {node: 3, val: 11},{node: 5, val: 6}],
  [{node: 4, val: 6}, {node: 6, val: 9}],
  [{node: 5, val: 9}, {node: 3, val: 2},{node: 1, val: 14}]
]

g.set_nodes
g.set_initial

g.total.times do |index|
  g.set_node_neighbors(index, neighborhood)
end

puts g.nodes

d = Dijkstra.new(g)
unvisited = d.get_unvisited_set

current = d.get_current_node

puts current
