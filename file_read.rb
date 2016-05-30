mode = "r+"
file = File.open("friends-list.txt", mode)
puts file.inspect
puts file.read
file.close