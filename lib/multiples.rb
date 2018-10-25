def collect_multiples(limit)
  i = 1
  arr = []
  while i < limit
    if i % 3 == 0
      arr << i
    elsif i % 5 == 0
      arr << i
    end
  i += 1
  end
  arr
end

def sum_multiples(limit)
  sum = 0
  arr = collect_multiples(limit)
  arr.each {|x| sum += x}
  sum
end
