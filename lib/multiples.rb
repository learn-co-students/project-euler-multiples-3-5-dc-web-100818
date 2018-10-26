require 'pry'

def collect_multiples(limit)
  range = (1...limit)
  range.select {|number| number % 3 == 0 || number % 5 == 0}
end

def sum_multiples(limit)
  collect_multiples(limit).inject(:+)
end
