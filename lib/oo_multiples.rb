# Enter your object-oriented solution here!

class Multiples 
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def collect_multiples() 
    list = (1...self.number).to_a
    newList = list.select do |num| 
      if num % 3 === 0 || num % 5 === 0
        num
      end
    end 
  
    return newList
  end 

  def sum_multiples
    multiples = self.collect_multiples()
    return multiples.sum
  end
end