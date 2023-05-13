# In the last question we had the following classes:

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

=begin
If we call Hello.hi we get an error message. How would you fix this?

ANSWER:
Change line 10 to `def self.hi`

Partially right. Further info below.

You could define the hi method on the Hello class as follows:

class Hello
  def self.hi
    greeting = Greeting.new
    greeting.greet("Hello")
  end
end

This is rather cumbersome. Note that we cannot simply call greet in the self.hi
method definition because the Greeting class itself only defines greet on its
instances, rather than on the Greeting class itself.
=end