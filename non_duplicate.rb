def non_duplicate_values(values)
	values.find_all { |n| values.count(n) == 1}
end

p non_duplicate_values([1,2,2,3,3,4,5])
p non_duplicate_values([1,2,2,3,4,4])
p non_duplicate_values([1,2,2,1,3,3,4,4])
