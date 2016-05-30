def palindrome?(sentence)
	sentence.downcase.gsub(" ", "") == sentence.downcase.gsub(" ", "").reverse
	# sentence.downcase.join("") == sentence.downcase.join("").reverse
end 

p palindrome?('Never odd or even')
p palindrome?('kanak')
p palindrome?("kishan")