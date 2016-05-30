addition = lambda { |a,b| a + b }
p addition.call(5,6)

empty_block = lambda { }
puts empty_block.object_id
puts empty_block.class
puts empty_block.class.superclass

class Calculator
	def add(a,b)
		return a+b
	end
end

addition_method = Calculator.new.method('add')
addition = addition_method.to_proc

p addition.call(5,5)