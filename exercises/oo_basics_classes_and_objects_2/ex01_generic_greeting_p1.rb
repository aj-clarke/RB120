# Modify the following code so that Hello! I'm a cat! is printed when
# Cat.generic_greeting is invoked.

class Cat
  def self.generic_greeting
    puts "Hello! I'm a cat!"
  end

end

# Cat.generic_greeting
kitty = Cat.new
# kitty.generic_greeting
p kitty.class#.generic_greeting