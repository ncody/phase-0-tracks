class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
    "Woof!" * num
  end

  def roll_over
    "*rolls over*"
  end

  def dog_years(age)
    age.to_i * 7
  end

  def sit
    "*sits*"
  end

  def initialize
    p "Initializing new puppy instance..."
  end

end

spot = Puppy.new
#p spot.fetch("ball")
#p spot.speak(3)
#p spot.roll_over
#p spot.dog_years(3.5)
#p spot.dog_years(3)
#p spot.sit


