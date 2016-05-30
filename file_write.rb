what_am_i = File.open("clean-slate.txt", "w") do |file|
	file.puts "Call me Soni Kishan."
end

p what_am_i

File.open("clean-slate.txt", "r") { |file| puts file.read }