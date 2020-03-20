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

# Small Graph

# a = GraphNode.new("a")
# b = GraphNode.new("b")
# c = GraphNode.new("c")

# a.neighbors << b
# b.neighbors << a
# b.neighbors << c
# c.neighbors << b

# graph = [a, b, c]

a = GraphNode.new("a")
b = GraphNode.new("b")
c = GraphNode.new("c")
d = GraphNode.new("d")
e = GraphNode.new("e")
f = GraphNode.new("f")
g = GraphNode.new("g")
h = GraphNode.new("h")
i = GraphNode.new("i")
j = GraphNode.new("j")
k = GraphNode.new("k")
l = GraphNode.new("l")

a.neighbors << b
a.neighbors << c
a.neighbors << e
b.neighbors << a
b.neighbors << d
b.neighbors << g
c.neighbors << a
c.neighbors << e
c.neighbors << f
d.neighbors << b
d.neighbors << f
d.neighbors << g
e.neighbors << a
e.neighbors << c
e.neighbors << h
f.neighbors << c
f.neighbors << d
f.neighbors << j
g.neighbors << b
g.neighbors << d
g.neighbors << l
h.neighbors << e
h.neighbors << i
h.neighbors << k
i.neighbors << h
i.neighbors << j
i.neighbors << k
j.neighbors << f
j.neighbors << i
j.neighbors << l
k.neighbors << h
k.neighbors << i
k.neighbors << l
l.neighbors << g
l.neighbors << j
l.neighbors << k

graph = [a, b, c, d, e, f, g, h, i, j, k, l]

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


## Simpler Solution

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


