class Restaurant
	def initialize(menu)
		@menu = menu
	end

	def cost(*orders)
		orders.inject(0) do |total_cost, order|
			total_cost + order.keys.inject(0) { |cost,key| cost + @menu[key]*order[key] }
		end
	end
end

r1 = Restaurant.new({:rice => 3, :noodles => 2})
p r1.cost({:rice => 1, :noodles => 1})

r2 = Restaurant.new({:rice => 3, :noodles => 2})
p r2.cost({:rice => 1, :noodles => 1},{:rice => 2, :noodles => 2})