=begin
How do you find where Ruby will look for a method when that method is called?
ANSWER:
You can view the objects `method lookup chain`

How can you find an object's ancestors?
ANSWER:
`object.ancestors`
=end

module Taste
  def flavor(flavor)
    puts "#{flavor}"
  end
end

class Orange
  include Taste
end

class HotSauce
  include Taste
end

=begin
What is the lookup chain for `Orange` and `HotSauce`?

`Orange`    => Orange > Taste > Object > Kernel > BasicObject
`HotSauce`  => HotSauce > Taste > Object > Kernel > BasicObject
=end

# NOTE: Keep in mind this is a class method and it will not work if you call
# this method on an instance of a class (unless of course that instance has a
# method called `ancestors`).