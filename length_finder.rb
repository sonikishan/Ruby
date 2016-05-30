def length_finder(input_array)
	l_array = []
	input_array.each do |index, value|
		l_array << v.length
	end
	return l_array
end

def length_finder1(input_array)
	input_array.map { |value| value.length }
end

p length_finder1(['I','am','genius'])
p length_finder1(['things','are','','awesome'])