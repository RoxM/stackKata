require_relative "../stackKata"

describe MyStack do

it 'newlyCreatedStack_shouldbeEmpty' do
	myStack = MyStack.new
	expect(myStack.isEmpty).to be_truthy
	expect(myStack.getSize).to eq 0	
end

end