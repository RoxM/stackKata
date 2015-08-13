require_relative "../stackKata"

describe MyStack do

it 'createEmptyStack' do
	myStack = MyStack.new
	expect(myStack.isEmpty).to be_truthy
end

end