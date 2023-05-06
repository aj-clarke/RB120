module Speak
  def speak(sound)
    puts sound
  end
end

class GoodDog
  include Speak
end

class HumanBeing
  include Speak
end

sparky = GoodDog.new  # => instantiating an object called `sparky` from the class `GoodDog`
sparky.speak("Arf!")  # => Arf!
bob = HumanBeing.new  # => instantiating an object called `bob` from the class `HumanBeing`
bob.speak("Hello!")   # => Hello!
