require 'array'

describe Array do

  context 'when applying the infiltrate method you' do

    it 'can sum all elements in an array of numbers' do
      expect([1,2,3,4].infiltrate {|memo, number| memo + number}).to eq 10
    end
e
    it 'can subtract all the elments from one another in an array of numbers' do
      expect([20,4,5,6].infiltrate {|memo, number| memo - number}).to eq 5
    end
    
    it 'can multiply all the elements in an array of numbers' do
      expect([1,2,3,4].infiltrate {|memo, number| memo * number}).to eq 24
    end 
    
    it 'can divide all the elements in an array of numbers' do
      expect([1000,100,10,1].infiltrate {|memo, number| memo / number}).to eq 1 
    end

    it 'can take a symbol (:+) as an argument instead of a block' do
      expect([1,2,3,4].infiltrate(&:+)).to eq 10
    end

    it 'can take a symbol (:-) as an argument instead of a block' do
      expect([100,50,10,5].infiltrate(&:-)).to eq 35    
    end

    it 'can take a symbol (:*) as an argument instead of a block' do
      expect([1,2,3,4].infiltrate(&:*)).to eq 24
    end

    it 'can take a symbol (:/) as an argument instead of a block' do
      expect([100,2,2,5].infiltrate(&:/)).to eq 5
    end
    
    it 'can take a default value' do
      expect([1,2,3,4].infiltrate(10) {|memo, number| memo + number}).to eq 20      
    end

    it 'can add together a string of words' do
      expect(["the", "quick", "brown", "fox"].infiltrate {|memo, word| memo + word}).to eq "thequickbrownfox" 
    end

    it 'can add together a string of wrods with a default word to start' do
      expect(["world"].infiltrate("Hello") {|memo, word| memo + word}).to eq "Helloworld"
    end
    
    it 'can find the longest word from a collection of words' do
      expect(longest = %w{ cat sheep bear }.inject do |memo, word|
      memo.length > word.length ? memo : word end).to eq "sheep"  
    end
  end
 end
