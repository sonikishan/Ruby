def facto(n)
	if n == 0 || n == 1
		1
	else
		 n * facto(n-1)
	end
end

puts "Please enter Number: "
num = gets.chomp.to_i
num = facto(num).to_s
count = 0
num.reverse.split("").each do |n|
	n == "0" ? count += 1 : count 
end

puts "Trailing Zeros after factorials is: #{count}"




# How many trailing zeroes would be found in 4617!, upon expansion?

# I'll apply the procedure from above:
#     51 :  4617 ÷ 5 = 923.4, so I get 923 factors of 5
#     52 :  4617 ÷ 25 = 184.68, so I get 184 additional factors of 5
#     53 :  4617 ÷ 125 = 36.936, so I get 36 additional factors of 5
#     54 :  4617 ÷ 625 = 7.3872, so I get 7 additional factors of 5
#     55 :  4617 ÷ 3125 = 1.47744, so I get 1 more factor of 5
#     56 :  4617 ÷ 15625 = 0.295488, which is less than 1, so I stop here.

#     Then 4617! has 923 + 184 + 36 + 7 + 1 = 1151 trailing zeroes.
