#Take a look at the following code:

# class Pet
#   attr_reader :name

#   def initialize(name)
#     @name = name.to_s
#   end

#   def to_s
#     @name.upcase!
#     "My name is #{@name}."
#   end
# end

# name = 'Fluffy'
# fluffy = Pet.new(name)
# puts fluffy.name      # => Fluffy
# puts fluffy           # => <Pet 0x329502385>
# puts fluffy.name      # => Fluffy
# puts name             # => Fluffy
# What output does this code print? Fix this class so that there are no
# surprises waiting in store for the unsuspecting developer.

# I missed the #upcase! method; therefore I would change where that method is
# called. When initializing the @name instance variable via the `initialize`
# constructor, I would initialize the instance with the #upcase! method.
# Also, the #to_s method is automatically invoked when #puts is called; therefor
# it is no need to have that as part of the initialization of the @name instance
# variable. Below is how the code would look after making changes.

class Pet
  attr_reader :name

  def initialize(name)
    @name = name.upcase!
  end

  def to_s
    "My name is #{@name}."
  end
end

name = 'Fluffy'
fluffy = Pet.new(name)
puts fluffy.name      # => FLUFFY
puts fluffy           # => My name is FLUFFY
puts fluffy.name      # => FLUFFY
puts name             # => Fluffy

#-------------------------------------------------------------------------------

=begin
LS SOLUTION - I understood the issue differently and went a different route.

class  Pet
  attr_reader :name

  def initialize(name)
    @name = name.to_s
  end

  def to_s
    "My name is #{@name.upcase}."
  end
end
=end
