puts "What is the hamster's name?"
hamster = gets.chomp

puts "What is this hamster's volume level on a scale of 1 to 10?"
volume = gets.chomp
volume = volume.to_i

puts "What color is the hamster's fur?"
fur_color = gets.chomp

puts "Is this hamster a good candidate for adoption (y/n)"
adopt = gets.chomp

puts "What is the estimated age of this hamster?"
est_age = gets.chomp
if est_age.empty?
  est_age = nil
else
  est_age = est_age.to_i
end

puts "Name: #{hamster}"
puts "Noise level: #{volume}"
puts "Color: #{fur_color}"
puts "Good choice for adoption: #{adopt}"
puts "Estimated age: #{est_age}"