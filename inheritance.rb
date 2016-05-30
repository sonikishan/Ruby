# Understanding Inheritance

# Integers and Floats are both Numbers.
# A square is also a rectangle, and both in turn are quadrilaterals.
# Both cars and motorcycles are vehicles (but a motorcycle isn't a car).

# This kind of parent-child relationship between classes is often referred to as inheritance, where the specialized class inherits the abilities of its more generic parent.

# So according to Object#is_a?, the object 1.0 is both a Fload and Numeric (the class that represents a number in Ruby).
# This is a perfect example of sub-classes - here Float is a sub-class of Numeric, so 1.0 which is a Float is also a Numeric
p 1.0.is_a? (Float)
p 1.0.is_a? (Numeric)

p 1.0.class # Float
p 1.0.class.superclass # Numeric or Float.superclass
p 1.0.class.superclass.superclass # Object
p 1.0.class.superclass.superclass.superclass # BasicObject
p 1.0.class.superclass.superclass.superclass.superclass # nil


# The Class#superclass method tells you which class any given class was inherited from. Note that it's an instance method on Class and not on Object.


puts Float.superclass    # Numeric
puts Numeric.superclass  # Object
puts Object.superclass   # BasicObject

# Each class in that chain inherits the behaviour of the class that comes next. All such chains in Ruby end with BasicObject which is a completely blank, empty class with no superclass. Calling BasicObject's superclass method retuns nil.

# Let's see how many methods are uniquely 1.0 s and how many are inherited by it from its ancestors.


p "Float has #{Float.instance_methods.count} instance methods" # Float has this many methods including all the inherited methods

p "Float instance methods - Object instance methods gives: #{(Float.instance_methods - Object.instance_methods).count}"  


p "Float instance methods - Object instance methods - Numeric instance methods gives: #{(Float.instance_methods - Object.instance_methods - Numeric.instance_methods).count}"


# Is Ancestor?

def is_ancestor?(klass, subclass)
	current_class = subclass
	while !current_class.superclass.nil? && current_class != klass
		current_class = current_class.superclass
	end
	current_class == klass
end