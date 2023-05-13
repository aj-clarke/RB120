# If we have this code:

class Greeting
  def greet(message)
    puts message
  end
end

class Hello < Greeting
  def hi
    greet("Hello")
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end

# What happens in each of the following cases:

# Case 1
hello = Hello.new
hello.hi          # => 'Hello'

# Case 2
hello = Hello.new
hello.bye         # => NoMethodError

# Case 3
hello = Hello.new
hello.greet       # => nil    Wrong read next line
# An ArgumentError reporting a wrong number of arguments is returned. The Hello
# class can access its parent class'sgreet method, but greet takes an argument
# which is not being supplied if we just call greet by itself.

# Case 4
hello = Hello.new
hello.greet("Goodbye") # => 'Goodbye'

# Case 5
Hello.hi          # => NoMethodError     Semi Correct, read next line
=begin
An undefined method hi is reported for the Hello class. This is because the hi
method is defined for instances of the Hello class, rather than on the class
itself. Since we are attempting to call hi on the Hello class rather than an
instance of the class, Ruby cannot find the method on the class definition.
=end
