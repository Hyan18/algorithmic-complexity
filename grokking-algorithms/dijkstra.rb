# Sample Graph

graph = {}
graph["start"] = {}
graph["start"]["a"] = 6
graph["start"]["b"] = 2
graph["a"] = {}
graph["a"]["fin"] = 1
graph["b"] = {}
graph["b"]["a"] = 3
graph["b"]["fin"] = 5
graph["fin"] = {}

# Costs table
infinity = Float::INFINITY
costs = { "a" => 6, "b" => 2, "fin" => infinity }

# Parents table
parents = { "a" => "start", "b" => "start", "fin" => nil }

processed = {}

def find_lowest_cost_node(costs, processed)
  lowest_cost = Float::INFINITY
  lowest_cost_node = nil
  for node in costs.keys
    cost = costs[node]
    if cost < lowest_cost && !processed[node]
      lowest_cost = cost
      lowest_cost_node = node
    end
  end
  return lowest_cost_node
end

node = find_lowest_cost_node(costs, processed)
while node != nil
  cost = costs[node]
  neighbours = graph[node]
  for n in neighbours.keys
    new_cost = cost + neighbours[n]
    if costs[n] > new_cost
      costs[n] = new_cost
      parents[n] = node
    end
  end
  processed[node] = true
  node = find_lowest_cost_node(costs, processed)
end

print costs
