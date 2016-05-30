# Redefining a method involves simply replacing one method with another. The original method is simply lost.


class Rectangle
	def initialize(length, breadth)
		@length = length
		@breadth = breadth
	end

	def perimeter 
		2 * (@length + @breadth)
	end

	def area
		@length * @breadth
	end
	
end

p Rectangle.new(5,8).perimeter
p Rectangle.new(5,8).area

class Rectangle
	def initialize
	end

	def area
	end
end