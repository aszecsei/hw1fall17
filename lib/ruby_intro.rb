# When done, submit this entire file to the ICON HW1 Dropbox.

# Part 1

def sum arr
  return arr.inject(0) {|sum, i| sum+i}
end

def max_2_sum arr
  return arr.max(2).inject(0) {|sum, i| sum+i}
end

def sum_to_n? arr, n
  return arr.combination(2).any? {|a, b| a+b==n}
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  return (/[a-zA-Z&&[^aeiouAEIOU]]/ =~ s.chr) != nil
end

def binary_multiple_of_4? s
  return (/[^01]/ =~ s) == nil && (/^(?:[01]*0)?0$/ =~ s) != nil 
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if isbn == ""
      raise ArgumentError.new("The ISBN must not be empty")
    end
    if price <= 0
      raise ArgumentError.new("The price must not be less than or equal to zero")
    end
    @isbn = isbn
    @price = price
  end
  
  attr_accessor :isbn
  
  attr_accessor :price
  
  def price_as_string
    return "$" + ('%.2f' % @price)
  end
end
