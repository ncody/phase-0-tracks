#ask user for their real name and save it
#switch the first name and the last name
#change all the vowels (aeiou) to the next vowel (i.e. a becomes e, and so on)
#change all the consonants to the next consonant in the alphabet

puts "What is your name?"
 real_name = gets.chomp
 real_name.downcase!

#reverse_name = real_name.split(' ').reverse.join (' ')


def switch(string)
  length = string.length
  index = 0
  new_string = ""
  vowels = ['a', 'e', 'i', 'o', 'u']
  consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']

  while index < length
    letter = string[index]

      if letter == " "
        next_letter = " "

      elsif letter == "u"
        next_letter = "a"

      elsif letter == "z"
        next_letter = "b"

      elsif vowels.include? letter
        if true
          vowel_index = vowels.index(letter)
          new_index = vowel_index + 1
          next_letter = vowels[new_index]
        end
      else consonants.include? letter
        if true
        consonant_index = consonants.index(letter)
          new_index = consonant_index + 1
          next_letter = consonants[new_index]
        end
      end

    index += 1
    new_string += next_letter
  end

new_string
end

print switch (real_name)