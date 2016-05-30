# def calc(a,b,&block) # &block is an explicit (named) parameter
# 	block.call(a,b)
# end

# p calc(5,5) { |a,b| a+b }
# this is an implicit block
# -- it is nameless and is not 
# passed as an explicit parameter.


# def calc(a,b)
# 	yield(a,b) # yield calls an implicit (unnamed) block 
# end

# addition = lambda { |x,y| x+y }
# p calc(5,15, &addition)
# like our last example, &addition is 
# an explicit (named) block 
# -- but `yield` can still call it!


Filter = lambda do |array, &block|
	array.select(&block)
end

p Filter.call([1,2,3,4]) { |n| n.even? }
p Filter.call([1,2.0,3,4.9]) { |n| n.integer? }