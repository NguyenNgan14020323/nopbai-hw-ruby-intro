# When done, submit this entire file to the autograder.

# Part 1

def sum arr
 s = 0
 arr.each { |a|  s += a }
 return s
end

def max_2_sum arr
  s = 0
  if (arr.length == 1)
    return arr[0]
  end
   
  if (arr.length == 0)
    return 0
  end
  
  if(!arr.empty?)
    arr = arr.sort{ |x,y| y <=> x }
  end
  
  s = arr[0] + arr[1]
  return s
end

def sum_to_n? arr, n
  arr.combination(2).each { |c|return true if (c[1] + c[0] === n) }
  false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  start = false
  if ((s =~ /\A(?=[^aeiou])(?=[a-z])/i) == 0)
    start = true
  end
  start
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  isIt = false
  if ((s.to_i(2).is_a? Integer) && (s[0] == '0' || s[0] == '1'))
    if s.to_i(2)%4 == 0
      isIt = true
    end
  end
  isIt
end

def isbinary? s
  return true if s =~ /^0b[01]+$/
end

# Part 3

class BookInStock
# YOUR CODE HERE
  @isbn
  @price
  def initialize(isbn, price)
    raise ArgumentError, "Argument not valid" unless
      !(!(price > 0) or !(isbn != ""))
    @isbn = isbn
    @price = price
  end
  attr_accessor :isbn
  attr_accessor :price
  def price_as_string()
    "$#{'%.2f' % @price}"
  end
end
