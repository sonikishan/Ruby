list = (1..10).to_a

p list
p list.collect { |i| i >= 3 && i <= 7 }
p list.map { |i| i >= 3 && i <= 7 }
p list.select { |i| i >= 3 && i <= 7 }

class Person
	attr_accessor :name, :surname, :age
	def initialize(name, surname, age)
		@name, @surname, @age = name, surname, age
	end
end

person = []
person << Person.new("Daniel", "Craig", 43)
person << Person.new("Pierce", "Brosnan", 58)
person << Person.new("Sean","Connery",81)

p person.map { |p| p.surname }