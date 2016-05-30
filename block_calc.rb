def calculate(a,b)
	yield(a,b)
end

a = calculate(2,3) { |a,b| a+b }
m = calculate(2,3) { |a,b| a*b }
puts a
puts m