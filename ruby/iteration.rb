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


#Release 2
years = [2017, 2016, 2015, 2014, 2013]
letters = {
  a: 1,
  b: 2,
  c: 3,
  d: 4,
  e: 5
}

#QUESTION 1: ARRAY
#puts "Array delete:"
#years.delete_if {|year| year < 2015}
#puts years

#QUESTION 1: HASH
#puts "hash delete:"
#letters.delete_if {|letter, place| letter>= :c}
#puts letters

#QUESTION 2: ARRAY
#puts "Array keep:"
#years.keep_if {|year| year < 2015}
#puts years

#QUESTION 2: HASH
#puts "Hash keep:"
#letters.keep_if {|letter, place| letter >= :c}
#puts letters

#QUESTION 3: ARRAY
#puts "array:"
#puts years.select {|year| year.even?}

#QUESTION 3: HASH
#puts "Hash:"
#puts letters.select {|letter, place| place.odd?}

#QUESTION 4: ARRAY
puts "array:"
puts years.drop_while {|year| year > 2015}

#QUESTION 4: HASH
puts "hash:"
puts letters.drop_while {|letter, place| letter != :d}