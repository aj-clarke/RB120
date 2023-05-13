# DO NOT do it this way

# class Wedding
#   attr_reader :guests, :flowers, :songs

#   def prepare(preparers)
#     preparers.each do |preparer|
#       case preparer
#       when Chef
#         preparer.prepare_food(guests)
#       when Decorator
#         preparer.decorate_place(flowers)
#       when Musician
#         preparer.prepare_performance(songs)
#       end
#     end
#   end
# end

# class Chef
#   def prepare_food(guests)
#     # implementation
#   end
# end

# class Decorator
#   def decorate_place(flowers)
#     # implementation
#   end
# end

# class Musician
#   def prepare_performance(songs)
#     #implementation
#   end
# end

# Why not? Answer:
=begin
Preparer method has too many dependencies. If anything were to be changed or if
any additional `preparers` were needed, then the `Wedding#prepare` method 
becomes very messy and hard to maintain.
=end


# The RIGHT way ----------------------------------------------------------

class Wedding
  attr_reader :guests, :flowers, :songs

  def prepare(preparers)
    preparers.each do |preparer|
      preparer.prepare_wedding(self)
    end
  end
end

class Chef
  def prepare_wedding(wedding)
    prepare_food(wedding.guests)
  end

  def prepare_food(guests)
    #implementation
  end
end

class Decorator
  def prepare_wedding(wedding)
    decorate_place(wedding.flowers)
  end

  def decorate_place(flowers)
    # implementation
  end
end

class Musician
  def prepare_wedding(wedding)
    prepare_performance(wedding.songs)
  end

  def prepare_performance(songs)
    #implementation
  end
end


#------------------------------------------------------------------
# Another Example:
class Duck
  def sound
      "Quack"
  end
end

class Dog
  def sound
      "Bark"
  end
end

class Cat
  def sound
      "Meow"
  end
end

class Animal 
  def make_sound(animal)
      puts animal.sound
  end
end

animal = Animal.new

animal.make_sound(Duck.new)
animal.make_sound(Dog.new)
animal.make_sound(Cat.new)

=begin
Explination:
The example shows an implementation of the duck typing approach for
polymorphism. The Duck, Cat, and Dog classes each implement the same sound
method with slight modifications.

The Animal class has a make_sound method that receives an object that it calls
the sound method.

Note: It does not matter how the type of object being passed is passed; what
matters is that the object being passed contains the sound method.
=end