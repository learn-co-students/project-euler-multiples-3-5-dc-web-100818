class Multiples
  attr_accessor :limit

  @@all = []

  def initialize(limit)
    @limit = limit
    @@all << self
  end

  def collect_multiples
    range = (1...limit)
    range.select {|number| number % 3 == 0 || number % 5 == 0}
  end

  def sum_multiples
    self.collect_multiples.reduce(:+)
  end
end
