#ask user for their real name and save it
#switch the first name and the last name
#change all the vowels (aeiou) to the next vowel (i.e. a becomes e, and so on)
#change all the consonants to the next consonant in the alphabet

puts "What is your name?"
  real_name = gets.chomp
  real_name.downcase!

puts real_name.split(' ').reverse.join (' ')

