# If we have a class AngryCat how do we create a new instance of this class?

class AngryCat
  def hiss
    puts 'Hisssss!!!'
  end
end

# Create new instance

mad_kat = AngryCat.new # calling the classes `new` class method to return a new object

p mad_kat
