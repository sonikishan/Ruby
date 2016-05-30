class MyArray < Array
end

# The < operator informs Ruby that when creating the class MyArray, it should set Array as its superclass.

# Here we have created our own MyArray which subclasses Ruby's Array. It inherits all of Array's behaviour and so has all of the same methods - and an instance of MyArray works exactly like an instance of Array.

p MyArray.methods == Array.methods # Returns true

p MyArray.new([1,2,3]).map { |i| i + 1 }
p Array.new([1,2,3]).map { |i| i + 1  }


# Real Example

class Rectangle 
	def initialize(length, breadth)
		@length = length
		@breadth = breadth
	end
	
	def perimeter
		2 * (@length + @breadth)
	end
end

class Square < Rectangle
	def initialize(length)
		@length = length
		@breadth = length
	end
end

p Square.new(3).perimeter
p Square.new(10).perimeter

p Rectangle.new(5,8).perimeter