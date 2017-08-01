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