#Ask for client name and save answer as string
#Ask for client age and save answer as integer
#Ask for number of children and save answer as integer
#Ask for decor theme and save answer as string
#Ask if returning customer, save answer as boolean
#Print all answers on screen
#Ask if there is any information that needs to be changed answer either 'no' or what needs to be updated (ask until answer is no)
#if answer is 'no' exit program
#if answer is value to update ask for the new answer and save it over the old answer
#print final answers
#exit program

client_info = {}
name = ""
age = ""
children = ""
decor = ""

puts "What is the client's full name?"
  name = gets.chomp
  client_info["name"] = name
puts "What is the client's age?"
  age = gets.chomp
  client_info[:age] = age.to_i
puts "How many children does the client have?"
  children = gets.chomp
  children.to_i
  client_info[:children] = children.to_i
puts "What is the decor theme?"
  decor = gets.chomp
client_info["decor"] = decor
puts "Is this a returning customer (y/n)?"
  returning = gets.chomp
def string_to_boolean(answer)
  return true if answer == "y"
  return false if answer == "n"
end
client_info[:returning_client] = string_to_boolean(returning)

p client_info

puts "Would you like to change any info? If yes, enter what value (name, age, children, decor, return customer), otherwise, please type 'no'."
  change = gets.chomp

if change == "no"
  exit
elsif change == "name"
  puts "What is the client's full name?"
  name = gets.chomp
  client_info["name"] = name
elsif change == "age"
  puts "What is the client's age?"
  age = gets.chomp
  client_info[:age] = age.to_i
elsif change == "children"
  puts "How many children does the client have?"
  children == gets.chomp
  children.to_i
  client_info[:children] = children.to_i
elsif change == "decor"
  puts "What is the decor theme?"
  decor = gets.chomp
  client_info["decor"] = decor
elsif change == "return customer"
  puts "Is this a returning customer (y/n)?"
  returning = gets.chomp
  client_info[:returning_client] = string_to_boolean(returning)
end

 p client_info

 exit






