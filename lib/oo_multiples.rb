class Multiples
  attr_reader :limit

  def initialize(limit)
    @limit = limit
    raise ArgumentError if !(limit.is_a? Integer)
  end

  def collect_multiples
    i = 1
    arr = []
    while i < @limit
      if i % 3 == 0
        arr << i
      elsif i % 5 == 0
        arr << i
      end
    i += 1
    end
    arr
  end

  def sum_multiples
    sum = 0
    arr = self.collect_multiples
    arr.each {|x| sum += x}
    sum
  end

end
