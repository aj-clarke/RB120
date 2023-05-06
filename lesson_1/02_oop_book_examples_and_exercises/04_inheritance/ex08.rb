=begin
Given the following code...

bob = Person.new
bob.hi

And the corresponding error message...

NoMethodError: private method `hi' called for #<Person:0x007ff61dbb79f0>
from (irb):8
from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'


What is the problem and how would you go about fixing it?

The `hi` method is a private method within the `Person` class, which means there
is no access to the method outside of the Class. We can either move the `hi`
method out of the 'private' section within the class, or create a separate public
method within the class that can call the the `hi` method within the class to
receive the desired outcome.
=end