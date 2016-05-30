def kaprekar?(k)
	no_of_digits = k.to_s.size
	p "Length of number is: #{no_of_digits}"
	square = (k ** 2).to_s
	p "Squared number is: #{square}"

	second_half = square[-no_of_digits..-1]
	p "After square second half number is: #{second_half}"
	first_half = square.size.even? ? square[0..no_of_digits-1] : square[0..no_of_digits-2]
	p "After square first half number is: #{first_half}"

	k == first_half.to_i + second_half.to_i
end

# p kaprekar?(9)
p kaprekar?(297)
p kaprekar?(55)
# p kaprekar?(18)
