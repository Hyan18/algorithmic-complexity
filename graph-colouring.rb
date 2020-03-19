require 'set'
require './deque/deque.rb'

ALL_COLORS = ["red", "blue", "green", "yellow"]

class GraphNode
  attr_accessor :label, :neighbors, :color

  def initialize(label)
    @label = label
    @neighbors = Set.new
    @color = nil
  end
end

a = GraphNode.new("a")
b = GraphNode.new("b")
c = GraphNode.new("c")

a.neighbors << b
b.neighbors << a
b.neighbors << c
c.neighbors << b

graph = [a, b, c]

def colour(graph)
  raise "Graph cannot have any loops" if has_loop?(graph)

  max_degree = (graph.map { |g| g.neighbors.length }).max
  graph_colors = Set.new(ALL_COLORS[..max_degree])
  start = graph[0]
  start.color = graph_colors.first
  start.neighbors.each { |n| n.color = (graph_colors - Set[start.color]).first }
  search_queue = Deque.new
  search_queue.add(start.neighbors)
  searched = {}
  searched[start] = true
  while !search_queue.empty?
    node = search_queue.pop
    if !searched[node]
      neighbor_colors = node.neighbors.map { |n| n.color }
      if neighbor_colors.include?(node.color)
        node.color = (graph_colors - neighbor_colors).first
      end
      node.neighbors.each do |n| 
        search_queue.push(n)
        n.color ||= (graph_colors - Set[node.color]).first
      end
      searched[node] = true
    end
  end
  result = {}
  graph.map { |node| result[node.label] =  node.color }
  return result
end

def has_loop?(graph)
  graph.each do |node|
    if node.neighbors.include?(node)
      return true
    end
  end
  false
end


## Faster Solution

def color_graph(graph, colors)

  graph.each do |node|
    if node.neighbors.include?(node)
      raise ArgumentError, "Legal coloring impossible for node with loop: #{node.label}"
    end

    # Get the node's neighbors' colors, as a set so we
    # can check if a color is illegal in constant time.
    illegal_colors = node.neighbors.map(&:color).compact.to_set

    # Assign the first legal color.
    node.color = colors.find { |color| !illegal_colors.include?(color) }
  end
end

puts colour(graph)

# color_graph(graph, ALL_COLORS)
# result = {}
# graph.map { |node| result[node.label] =  node.color }
# puts result


