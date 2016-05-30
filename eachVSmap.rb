# Each example
# toppings = %w[pepperoni mushroom bacon pineapple]

# def pizza(toppings)
# 	toppings.each do |topping|
# 		puts "I love #{topping} pizza!"
# 	end
# end

# pizza(toppings)

# puts toppings

# Map Example
toppings = %w[pepperoni mushroom bacon pineapple]

def pizza(toppings)
	toppings.map do |topping|
		"I love #{topping} pizza!"
	end
end

t = pizza(toppings)

p t

# puts toppings

