class MyQueue
  attr_accessor :head
  attr_accessor :tail

  def initialize
    @queue = Array.new
    @head = @queue[0]
  end

  def enqueue(element)
    @queue.unshift(element)
    @head = element
    @tail = @queue.last
  end

  def dequeue
    @queue.slice!(@queue.length - 1)
  end

  def empty?
    @queue.length > 0 ? false : true
  end
end
