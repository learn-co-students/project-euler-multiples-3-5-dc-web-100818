# require 'pry'

# If we list all of the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6, and 9. The sum of these multiples is 23
# Find the sum of all the multiples of 3 or 5 below 1000

range = (3...1000)

def sum_of_multiples(range)
    multiples = []

    range.each do |num|
        if num % 3 == 0 || num % 5 == 0
            multiples << num
        end
    end

    multiples.reduce(0) { |sum, x| sum + x }
end

# The above method could be refactored like so ... (talk about optimization in terms of memory and Big O in terms of time complexity)

def refactored_sum_of_multiples(range)
    sum = 0 
    range.each do |num|
        if num % 3 == 0 || num % 5 == 0
            sum = sum + num
        end
    end
    sum
end

puts sum_of_multiples(range)
puts refactored_sum_of_multiples(range)

# Solution to pass learn tests
def collect_multiples(num)
    range = (3...num)
    multiples = []
    range.each do |num|
        if num % 3 == 0 || num % 5 == 0
            multiples << num
        end
    end
    multiples
end

def sum_multiples(limit)
    multiples = collect_multiples(limit)
    multiples.reduce(0) { |sum, x| sum + x }
end


