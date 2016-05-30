def random_select(array, n)
	array.shuffle.take(2)
end

p random_select([1,2,3,4,5], 2)

def random_select_otherway(array, n)
	result = []
	n.times do
		result << array[rand(array.length)]
	end
	result
end

p random_select_otherway([1,2,3,4,5],2)