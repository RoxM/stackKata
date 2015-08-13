class MyStack

Overflow = Class.new(RuntimeError)
attr_reader :size, :capacity
def initialize(capacity)
	@size = 0
	@capacity = capacity
end
private_class_method :new

def self.make(capacity)
	new(capacity)
end

def isEmpty
	@size == 0
end

def getSize
	@size
end

def push(element)
	raise Overflow.new if size == capacity
	@size += 1
end

def pop(element)
	@size -= 1
end

end
