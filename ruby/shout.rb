=begin
module Shout
  def self.yell_angirly(words)
    p words + "!!!" + ":("
  end

  def self.yelling_happily(phrase)
   p phrase + "!" + "YAY!" + ":)"
  end
end

Shout.yell_angirly("no")
Shout.yelling_happily("I am happy")
=end


module Shout
  def yell_angirly(words)
    p words + "!!!" + ":("
  end

  def yelling_happily(phrase)
    p phrase + "!" + "YAY!" + ":)"
  end
end

class People
  include Shout
end

class Parrot
  include Shout
end

people = People.new
people.yell_angirly("hello")
people.yelling_happily("hello")

parrot = Parrot.new
parrot.yell_angirly("no")
parrot.yelling_happily("woo")