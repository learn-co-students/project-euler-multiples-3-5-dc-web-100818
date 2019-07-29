require 'pry'
# Enter your object-oriented solution here!
class Multiples
    attr_accessor :limit

    def initialize(limit)
        @limit = limit
    end

    def collect_multiples
        range = (3...self.limit)
        multiples = []
        range.each do |num|
            if num % 3 == 0 || num % 5 == 0
                multiples << num
            end
        end
        multiples 
    end

    def sum_multiples
        multiples = self.collect_multiples
        multiples.reduce(0) { |sum, x| sum + x }
    end
end

ten = Multiples.new(10)
ten.collect_multiples
