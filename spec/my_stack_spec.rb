class MyStack
  attr_accessor :stack
end

describe MyStack do
  let(:stack) { MyStack.new() }

  describe ".new" do
    it "can be initialized to an empty stack" do
      expect(stack.instance_variable_get(:@stack)).to eq([])
    end
  end

  describe "#push" do
    it "adds the given element to the top of the stack" do
      stack.push(4)
      expect(stack.instance_variable_get(:@stack)).to eq([4])
    end
  end

  describe "#pop" do
    it "removes the element at the top of the stack and returns it" do
      stack.stack = [1, 2, 3]

      expect(stack.pop).to eq(3)
      expect(stack.instance_variable_get(:@stack)).to eq([1,2])
    end
  end

  describe "#peek" do
    it "returns the element at the top of the stack without removing it" do
      stack.stack = [1, 2, 3]

      expect(stack.peek).to eq(3)
      expect(stack.instance_variable_get(:@stack)).to eq([1,2,3])
    end
  end
end

  # BONUS! Uncomment for an extra challenge.
# describe "Bonus methods ⭐️" do
#   describe ".new with optional limit" do
#     it "can be initialized with an optional limit attribute" do
#       stack = MyStack.new(5)
#       expect(stack.instance_variable_get(:@limit)).to eq(5) 
#     end
#   end

#   describe ".push with limit" do
#     stack = MyStack.new(5)
#     stack.stack = [1, 2, 3, 4]
#     it "adds the given element to the top of the stack if the stack is not full" do

#       stack.push(5)
#       expect(stack.instance_variable_get(:@stack)).to eq([1, 2, 3, 4, 5])
#     end

#     it "throws an exception if the stack is full" do 
#       expect { stack.push(6) }.to raise_error
#     end

#   end

#   describe "#size" do
#     stack = MyStack.new
#     stack.stack = [1, 2, 3]
#     it "returns the number of elements in the stack" do
#       expect(stack.size).to eq(3)
#     end
#   end

#   describe "#isEmpty" do
#     stack=MyStack.new
#     it "returns true if the stack is empty" do
#       expect(stack.isEmpty?).to eq(true)
#     end
#     it "returns false if the stack is not empty" do
#       stack.push(10)
#       expect(stack.isEmpty?).to eq(false)
#     end
#   end

#   describe "#isFull" do
#     stack=MyStack.new(5)
#     stack.stack = [1, 2, 3, 4, 5]
#     it "returns true if the stack is full" do
#       expect(stack.isFull?).to eq(true)
#     end
#     it "returns false if the stack is not full" do
#       stack.pop()
#       expect(stack.isFull?).to eq(false)
#     end
#   end

#   describe "#search" do
#     stack=MyStack.new
#     it "returns the distance between the top of the stack and the target element" do
#       stack.stack = [1, 2, 3, 4, 5]

#       expect(stack.search(5)).to eq(0)
#       expect(stack.search(4)).to eq(1)
#       expect(stack.search(1)).to eq(4)
#     end
#     it 'returns -1 when the target is not in the stack' do
#       stack.stack = [1, 2, 3, 4, 5]

#       expect(stack.search(7)).to eq(-1)
#     end
#   end
