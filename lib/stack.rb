# your code here
class Stack
  def initialize(limit = nil)
    @stack = []
    @limit = limit
  end

  def push(item)
    raise 'Stack Overflow' if @limit && @stack.length == @limit

    @stack.push(item)
  end

  def pop
    @stack.pop
  end

  def peek
    @stack[@stack.length - 1]
  end

  def size
    @stack.length
  end

  def empty?
    @stack.size.zero?
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
