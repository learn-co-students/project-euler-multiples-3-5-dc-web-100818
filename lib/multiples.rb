# Enter your procedural solution here!

def collect_multiples(number) 
  list = (1...number).to_a
  newList = list.select do |num| 
    if num % 3 === 0 || num % 5 === 0
      num
    end
  end 

  return newList
end 

def sum_multiples(number)
  multiples = collect_multiples(number)
  return multiples.sum
end





