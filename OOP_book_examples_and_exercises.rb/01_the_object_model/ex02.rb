=begin

What is a module?
  A module is a collection of behaviors that can be used within other classes by
  way of `mixins`.

What is a modules purpose?
  A modules purpose is to allow you to have 'generic' behaviors that can be used
  by multiple classes.

Create a module for the class you created in ex01.rb and include its property.

LS ANSWER TO QUESTIONS ABOVE:
A module allows us to group reusable code into one place. We use modules in our
classes by using the include method invocation, followed by the module name.
Modules are also used as a namespace (we will cover this in a later section).
=end

module ClubDegree
  def degree(deg)
    puts "This is a #{deg} degree club"
  end
end

class GolfClub
  include ClubDegree
end

driver = GolfClub.new
driver.degree("7.5")