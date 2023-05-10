=begin
Question:
Banner Class
Behold this incomplete class for constructing boxed banners.

Complete this class so that the test cases shown below work as intended. You are
free to add any methods or instance variables you need. However, do not make the
implementation details public.

You may assume that the input will always fit in your terminal window.
-----------------------
Questions:

Rules:
  Explicit Requirements
  - Add methods or instance variables required to complete the class 'Banner'

  Implicit Requirements
  - Banner needes to be dynamic in size
  - Empty message still produces a banner with a width of 2 spaces

-----------------------
Examples:

banner = Banner.new('To boldly go where no one has gone before.')
puts banner
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+

banner = Banner.new('')
puts banner
+--+
|  |
|  |
|  |
+--+

-----------------------
Data Structure:
I: New instanciation with a string message as the initialization argument 
W: Creating methods to produce the banner as required
O: Dynamic banner with input message

Algorithm:
< given a variable instanciated to a new object from the Banner class with a
  given message>

Within the `initialize` constructor, add a `message` instance var

Under the `private` access modifier, add a getter method for the `message`
instance var

`horizontal_rule`
  Create a dynamic growing string via concatination of the below on one line
    First char should be a '+'
    Concatenate the '-' char 'x' number of times
      'x' number is equal to: size of the message plus 2
    Last char should be a '+'

`empty_line`
  Create a dynamic growing string via concatination of the below on one line
    First char should be a '|'
    Concatenate an empty space 'x' number of times
      'x' number is equal to: size of the message plus 2
    Last char should be a '|'
-----------------------
Code:
=end

# Fix the below class

# class Banner
#   def initialize(message)
#   end

#   def to_s
#     [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
#   end

#   private

#   def horizontal_rule
#   end

#   def empty_line
#   end

#   def message_line
#     "| #{@message} |"
#   end
# end

class Banner
  def initialize(message)
    @message = message
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private
  attr_reader :message

  def horizontal_rule
    '+' + ('-' * (@message.size + 2)) + '+'
  end

  def empty_line
    '|' + (' ' * (@message.size + 2)) + '|'
  end

  def message_line
    "| #{@message} |"
  end
end

banner = Banner.new('To boldly go where no one has gone before.')
puts banner

banner = Banner.new('')
puts banner
