require 'pry'

def collect_multiples(limit)
  (1...limit).select do |el|
    (el % 3 == 0 || el % 5 == 0)
  end 
end


def sum_multiples(limit)
  collect_multiples(limit).inject(:+)
end 