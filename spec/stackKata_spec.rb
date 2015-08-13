require_relative "../stackKata"

describe MyStack do

let(:myStack) { MyStack.make(2) }

it 'Newly Created Stack Should be Empty' do
	expect(myStack.isEmpty).to be_truthy
	expect(myStack.getSize).to eq 0	
end

it 'After One Push Stack Size Should Be One' do
	myStack.push(1)
	expect(myStack.getSize).to eq 1
	expect(myStack.isEmpty).to be_falsey
end 

it 'After One Push and One Pop Stack Should be Empty' do
	myStack.push(1)
	myStack.pop(1)
	expect(myStack.getSize).to eq 0
	expect(myStack.isEmpty).to be_truthy
end 

it 'When Pushed Passed Limit Stack Over Flow' do
	myStack = MyStack.make(2)
	myStack.push(1)
	myStack.push(1)
	myStack.push(1)
	expect { myStack }.to raise_error
end

end