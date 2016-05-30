def array_of_fixnums?(array)
	array.all? {|number| number.is_a? Numeric}
	# This to works fine
	# array.all? { |n| n.is_a? Fixnum }
end

p array_of_fixnums?([1,2,3])
p array_of_fixnums?([1,2,'a'])