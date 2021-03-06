class Santa

  attr_reader :age, :ethnicity
  attr_accessor :gender

  def speak
   puts "Ho, ho, ho! Haaaappy Holidays!"
  end

  def eat_milk_and_cookies(type)
    puts "This was a good #{type}!"
  end

  def initialize(gender, ethnicity, age)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = age
  end

  def celebrate_birthday
    @age = @age+1
    puts "New age: #{@age}"
  end

  def get_mad_at(reindeer_name)
    #p @reindeer_ranking #(used to test that it prints the original)
    place = @reindeer_ranking.index(reindeer_name).to_i
    @reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(place))
    #p @reindeer_ranking #(used to test that it changes the rank)
  end

end

#santas = Santa.new

#santas.eat_milk_and_cookies("sugar cookie")
#santas.speak

#santas = []
#santas << Santa.new("female", "prefer not to say")
#santas << Santa.new("gender fluid", "Japanese")
#example_genders = ["male", "bigender"]
#example_ethnicities = ["blak", "white"]

#example_genders.length.times do |i|
 # santas << Santa.new(example_genders[i], example_ethnicities[i])
#p santas

#santas = Santa.new("female", "white")
#puts "Gender:  #{santas.gender}"
#santas.gender= "male"
#puts "Gender: #{santas.gender}"

#santas.celebrate_birthday
#p santas.age
#p santas.ethnicity

#santas.get_mad_at("Prancer")

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_age = *(1..140)


#example_genders.length.times do |i|
 # santas << Santa.new(example_genders[i], example_ethnicities[i])
#end

#santas = Santa.new(example_genders.sample, example_ethnicities.sample)
#p santas

santa_list = 2.times.collect{Santa.new(example_genders.sample, example_ethnicities.sample, example_age.sample)}
p santa_list
