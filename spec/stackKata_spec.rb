require_relative "../stackKata"

describe MyStack do

it 'Newly Created Stack Should be Empty' do
	myStack = MyStack.new
	expect(myStack.isEmpty).to be_truthy
	expect(myStack.getSize).to eq 0	
end

it 'After One Push Stack Size Should Be One' do
	myStack = MyStack.new
	myStack.push(1)
	expect(myStack.getSize).to eq 1
	expect(myStack.isEmpty).to be_falsey
end 

end