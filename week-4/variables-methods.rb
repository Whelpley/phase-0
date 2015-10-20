puts "What is your first name?"
first_name = gets.chomp

puts "What is your middle name?"
middle_name = gets.chomp

puts "What is your last name?"
last_name = gets.chomp

puts "Greetings and welcome, #{first_name} #{middle_name} #{last_name}!"

puts "Now, what is your favorite number?"

fave_number = gets.chomp.to_f
fave_number += 1
puts "Isn\'t #{fave_number} a better number?"