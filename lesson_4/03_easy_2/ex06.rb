# If I have the following class:

class Televeision
  def self.manufacturer
    # method logic
  end

  def module
    # method logic
  end
end

=begin

Which one of these is a class method (if any) and how do you know? How would
you call a class method?

ANSWER:
`self.manufacturer` is a class method.
You can call a class method by prepending the class name before the method
invocation, ie:
`Television.manufacturer`
=end