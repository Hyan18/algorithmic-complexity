require_relative 'node'

class Deque
  def initialize
    @first = nil
    @last = @first
  end

  def push(val)
    new_node = Node.new(val, nil, @last)

    if @last.nil? # If queue is empty
      @first = new_node
      @last = @first
      return
    end
    
    @last.next_node = new_node
    @last = new_node
    return
  end

  def pop
    popped = @first.value
    @first = @first.next_node
    if  @first == nil
      @last = @first
    end
    return popped
  end

  def add(collection)
    collection.each { |value| self.push(value) }
  end

  def empty?
    @first == nil && @last == nil
  end
end
