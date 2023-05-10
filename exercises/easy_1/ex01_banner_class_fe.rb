=begin
Question:
Banner Class - Further Exploration

Modify this class so new will optionally let you specify a fixed banner width at
the time the Banner object is created. The message in the banner should be
centered within the banner of that width. Decide for yourself how you want to
handle widths that are either too narrow or too wide.
-----------------------
Questions:

Rules:
  Explicit Requirements
  - Allow optional fixed banner width during Banner object instantiaion
  - Center message within the banner

  Implicit Requirements


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

-----------------------
Code:
=end

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
