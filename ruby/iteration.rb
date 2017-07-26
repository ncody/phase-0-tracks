#release 0
#def method
 # puts "This is a method!"
  #yield ("HOOO")
#end
#method { |x| puts "WOOO#{x}!"}

#release1

numbers = [1, 2, 3]
animal_names = {
  dog: "Spot",
  cat: "Fluffy",
  hamster: "Harry"
}

puts "original data:"
puts numbers
numbers.each do |number|
  puts "This is #{number}"
end
puts "After .each:"
puts numbers

puts "original data:"
puts animal_names
animal_names.each do |animal, name|
  puts "The #{animal}'s name is #{name}"
end
puts "After .each:"
puts animal_names

puts "original data:"
puts numbers
numbers.map! do |number|
  number.next
end
puts "After .map!:"
puts numbers
