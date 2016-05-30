def some_of_cubes(a,b)
	(a..b).to_a.map { |n| n*n*n }.reduce(:+)
end

p some_of_cubes(1,3)
p some_of_cubes(3,5)


# Other solution
def sum_of_cube_otherway(a,b)
	(a..b).inject(0) {|sum,x| sum += (x*x*x)}
end

p sum_of_cube_otherway(1,3)
p sum_of_cube_otherway(3,5)