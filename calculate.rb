def add(*numbers)
	numbers.inject(0) { |sum, num| sum + num }
end

def subtract(*numbers)
	c_numbers = numbers.shift
	numbers.inject(c_numbers) { |sub, num| sub - num }
end

def calculate(*arguments)
	options = arguments[-1].is_a?(Hash) ? arguments.pop : {}
	options[:add] = true if options.empty?
	add_res = add(*arguments) if options[:add]
	puts "Addition value is #{add_res}"
	sub_res = subtract(*arguments) if options[:subtract]
	puts "Subtract value is #{sub_res}"
	# return add(*arguments) if options[:add]
	# return subtract(*arguments) if options[:subtract]
end


add(4,5)
add(-10,2,3)

subtract(4,5)
subtract(0,0,0,-10)

calculate(4,5,add:true)
calculate(-10,2,3,subtract:true)
