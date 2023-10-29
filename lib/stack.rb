# your code here
class Stack
    attr_accessor :stack
    
    def initialize(limit = nil)
        @stack = []
        @limit = limit
    end

    def push(value)
        if full?
            raise 'Stack Overflow'
        else
        @stack.push(value)
        end
    end

    def pop
        @stack.pop
    end

    def peek
        stack[stack.length - 1]
    end

    def size
        @stack.length
    end

    def full?
        return false unless @limit
        @stack.size == @limit
    end

    def empty?
        @stack.empty?
    end

    def search(target)
        index = @stack.rindex(target)
        index.nil? ? -1 : @stack.size - 1 - index
    end

end