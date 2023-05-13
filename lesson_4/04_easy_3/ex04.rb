=begin
Given the class below, if we created a new instance of the class and then called
to_s on that instance we would get something like "#<Cat:0x007ff39b356d30>"
=end

class Cat
  attr_reader :type

  def initialize(type)
    @type = type
  end

  def to_s
    "I am a #{type} cat"
  end
end

tabby = Cat.new('tabby')
puts tabby              # I am a tabby cat

# or change the `to_s` to:

=begin
def display_type
  puts "I am a #{type} cat"
end

tabby = Cat.new('tabby')
tabby.display_type      # I am a tabby cat
=end