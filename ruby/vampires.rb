puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp.to_i
puts "What year were you born?"
year_born = gets.chomp.to_i
puts "Our company cafetia serves garlic bread. Should we order some for you?"
garlic_bread = gets.chomp
puts "Would you like to enroll in the company's health insurance?"
insurance = gets.chomp

if age == (2017 - year_born) && (garlic_bread || insurance == yes)
  puts "Probably not a vampire."

elsif age != (2017 - year_born) && (garlic_bread || insurance == no)
  puts "Probably a vampire."
end

