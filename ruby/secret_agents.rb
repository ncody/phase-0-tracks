#take the first character of the string
#if it is a space leave it the same.
#if letter is "Z", return "A"
#Otherwise, figure out the index location of the letter in the alphabet
#Get the next letter of the alphabet
#Store the next letter
#Repeat for the next character of the string until the string ends
#return the stored letters

def encrypt(string)
  length = string.length
  index = 0
  encrypted_string = ""

  while index < length
    letter = string[index]

      if letter == "z"
        next_letter = "a"

      elsif letter == " "
        next_letter = " "

      else
        next_letter = string[index].next
      end

    index += 1
    encrypted_string += next_letter
  end

encrypted_string
end

print encrypt ("Amazing Ruby")

