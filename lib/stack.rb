# your code here
class Stack
  def initialize(limit = nil)
    @stack = []
    @limit = limit
  end

  def push(item)
    raise 'Stack Overflow' if full?

    @stack.push(item)
  end

  def pop
    @stack.pop
  end

  def peek
    @stack.last
  end

  def size
    @stack.length
  end

  def empty?
    @stack.empty?
  end

  def full?
    @limit && @stack.size == @limit
  end

  def search(target)
    @stack.each_with_index do |item, idx|
      return size - idx - 1 if item == target
    end

    -1
  end
end
