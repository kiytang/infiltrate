require 'array'

describe Array do

  context 'when applying the infiltrate method you' do

  	it 'can sum all elements in an array of numbers' do
  		expect([1,2,3,4].infiltrate {|memo, number| memo + number}).to eq 10
  	end

  end
 end