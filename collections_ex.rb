# # problem 1

data = []

100.times do |i| 
	data.push(
		{
		user: {
				id: i,
				email: "user_#{i}@gmail.com",
				username: "user_#{i}",
				age: rand(18..75),	
				tweets: [
				"I'm user_#{i}",
				"This is my second tweet!"
				] 
			}
		}
	)
end

# # problem 2

# data[2][:user][:tweets].each { |element| puts "tweet: #{element}" }

# # problem 3

# puts data.reverse!

# # problem 4
# n = 34
# puts "#{data[n][:user][:username]} is at index #{data.index(data[n])} in the data array"

# # problem 5

age = data.select { |i| i[:user][:age] >= 18 && i[:user][:age] <= 25 }

puts "Username: Age"
age.each {|h| puts "#{h[:user][:username]}: #{h[:user][:age]}"}