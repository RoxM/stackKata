class MyStack
def initialize
	@size = 0
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
