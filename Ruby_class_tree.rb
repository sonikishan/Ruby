module WarmUp
end

puts WarmUp.class #Module
puts Class.superclass # Module
puts Module.superclass #Object

module Perimeter
	class Array
		def initialize
			@size = 400
		end
	end
end

our_arary = Perimeter::Array.new
ruby_array = Array.new

p our_arary.class
p ruby_array.class