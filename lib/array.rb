# Notes from ruby-doc:
# If you specify a block, then for each element in enum the block is 
# passed an accumulator value (memo) and the element. 
# the result becomes the new value for memo. At the end of the iteration, 
# the final value of memo is the return value for the method.
class Array
    
  def infiltrate(memo = self.first)
    if memo == self.first
      self[1..-1].each do |element|
      memo = yield(memo, element)
      end
    else
      self[0..-1].each do |element|
      memo = yield(memo, element)
      end
    end 
    memo      
  end
end