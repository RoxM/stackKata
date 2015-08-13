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
	myStack.pop
	expect(myStack.getSize).to eq 0
	expect(myStack.isEmpty).to be_truthy
end 

it 'When Pushed Passed Limit Stack Over Flow' do
	expect {
		myStack.push(1)
		myStack.push(1)
		myStack.push(1)
		}.to raise_error(MyStack::Overflow)
end

it 'When Empty Stack is Popped, It Should Under Flow' do
	expect {
		myStack.pop
		}.to raise_error(MyStack::Underflow)
end

it 'When one is push, one is popped' do
	myStack.push(1)
	expect(myStack.pop).to eq 1
end

it 'When one and two are pushed, two and one is popped' do
	myStack.push(1)
	myStack.push(2)
	expect(myStack.pop).to eq 2
	expect(myStack.pop).to eq 1
end

end