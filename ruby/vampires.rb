puts "How many employees will be processed?"
employees = gets.chomp.to_i

i = 0
while i < employees do
  puts "What is your name?"
  name = gets.chomp
  puts "How old are you?"
  age = gets.chomp.to_i
  puts "What year were you born?"
  year_born = gets.chomp.to_i
  puts "Our company cafetia serves garlic bread. Should we order some for you?"
  garlic_bread = gets.chomp
  garlic_bread.downcase!
  puts "Would you like to enroll in the company's health insurance?"
  insurance = gets.chomp
  insurance.downcase!

  allergies = nil
  until allergies == "done" || allergies == "sunshine" do
    puts "Do you have allergies? List them one at a time and put done when finished."
    allergies = gets.chomp
    allergies.downcase!
  end


  if name == "Tu Fang" || name =="Drake Cula"
    puts "Defintely a vampire."

  elsif allergies == "sunshine"
    puts "Probably a vampire"

  elsif age == (2017 - year_born) && (garlic_bread == "yes" || insurance == "yes")
    puts "Probably not a vampire."

  elsif age != (2017 - year_born) && garlic_bread == "no" && insurance == "no"
    puts "Almost certainly a vampire."

  elsif age != (2017 - year_born) && (garlic_bread == "no" || insurance == "no")
    puts "Probably a vampire."

  else
    puts "Results inconclusive."

  end
  i += 1
end

