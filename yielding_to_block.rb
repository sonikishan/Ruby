# def calculation(a, b, operation)
# 	operation.call(a,b)
# end

# p calculation(5,6, lambda { |a,b| a+b })
# p calculation(6,1, lambda { |a,b| a-b })


def calculation(a,b)
	yield(a,b)
end

puts calculation(5,6) { |a,b| a+b }
puts calculation(10,6) { |a,b| a-b }