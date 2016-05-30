def fact(n)
	if n == 0 || n == 1
		return 1
	else
		return n * fact(n-1)
	end
end

def number_shuffle(number)
	# no_of_combinations = number.to_s.size == 3 ? 6 : 24
 #  	digits = number.to_s.split(//)
 #  	combinations = []
 #  	combinations << digits.shuffle.join.to_i while combinations.uniq.size!=no_of_combinations
 #  	combinations.uniq.sort

	no_of_combination = fact(number.to_s.size)
	digits = number.to_s.split(//)
	combinations = []
	combinations << digits.shuffle.join.to_i while combinations.uniq.size != no_of_combination

	combinations.uniq.sort
end

p number_shuffle(123)
