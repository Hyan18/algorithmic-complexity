require './deque/deque.rb'

# Sample graph
graph = {}
graph["you"] = ["alice", "bob", "claire"]
graph["bob"] = ["anuj", "peggy"]
graph["alice"] = ["peggy"]
graph["claire"] = ["tom", "jonny"]
graph["anuj"] = []
graph["peggy"] = []
graph["tom"] = []
graph["jonny"] = []

def search(name, graph)
  search_queue = Deque.new
  search_queue.add(graph[name])
  searched = {}
  while search_queue
    person = search_queue.pop
    if !searched[person]
      if person_is_seller(person)
        puts person + " is a mango seller!"
        return true
      else
        search_queue.add(graph[person])
        searched[person] = true
      end
    end
  end
  return false
end

def person_is_seller(name)
  name[-1] == "m"
end

search("you", graph)
