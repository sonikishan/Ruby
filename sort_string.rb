def sort_string(string)
	string.split(' ').sort { |x,y| x.length <=> y.length}.join(' ')
end

p sort_string('Sort words in a sentence')
p sort_string('Awesome I am')