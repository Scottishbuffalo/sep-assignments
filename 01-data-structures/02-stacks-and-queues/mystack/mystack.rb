class MyStack
  attr_accessor :top

  def initialize
    @stack = Array.new
    self.top = nil
  end

  def push(item)
    @stack << item
    self.top = item
  end

  def pop
    item = self.top
    @stack.slice!((@stack.length) -1)
    self.top = @stack.last
    return item
  end

  def empty?
    @stack.length == 0 ? true : false
  end
end
