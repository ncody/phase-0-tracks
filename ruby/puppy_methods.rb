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

#spot = Puppy.new
#p spot.fetch("ball")
#p spot.speak(3)
#p spot.roll_over
#p spot.dog_years(3.5)
#p spot.dog_years(3)
#p spot.sit

class Kitty

  def initialize
   p "Initializing new kitty instance..."
  end

  def play(toy)
    "*Kitten plays with #{toy}*"
  end

  def meow(num)
    "Meow!" * num
  end

end

#boots = Kitty.new

#p boots.play("string")
#p boots.meow(2)


kitty_list = 50.times.collect {Kitty.new}
p kitty_list

kitty_list.each do |kitty|
  p kitty.play("string")
  p kitty.meow(1)
end

