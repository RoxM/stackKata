class MyStack

attr_reader :size, :capacity
def initialize(capacity)
	@size = 0
	@capacity = capacity
end

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
	@size += 1
end

def pop(element)
	@size -= 1
end

end
