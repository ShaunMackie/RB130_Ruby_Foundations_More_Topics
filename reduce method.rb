def reduce(array, start = array[0])
  acc = start

  array.each_with_index do |element, idx|
    if start == array[0]
      acc = yield(acc, array[idx + 1] )
      break if idx == array.size - 2
    else
      acc = yield(acc, array[idx] )
      break if idx == array.size - 1
    end
  end
end

array = [1, 2, 3, 4, 5]

reduce(array) { |acc, num| acc + num }                    # => 15
reduce(array, 10) { |acc, num| acc + num }                # => 25
#reduce(array) { |acc, num| acc + num if num.odd? }  

reduce(['a', 'b', 'c']) { |acc, value| acc += value }     # => 'abc'
reduce([[1, 2], ['a', 'b']]) { |acc, value| acc + value } # => [1, 2, 'a', 'b']
