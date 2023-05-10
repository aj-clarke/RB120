# Complete this program so that it produces the expected output:

class Book
  attr_accessor :author, :title # Added setter and getter methods for instance vars

  def to_s
    %("#{title}", by #{author})
  end
end

book = Book.new
book.author = "Neil Stephenson"
book.title = "Snow Crash"
puts %(The author of "#{book.title}" is #{book.author}.)
puts %(book = #{book}.)

# Expected Output
# The author of "Snow Crash" is Neil Stephenson.
# book = "Snow Crash", by Neil Stephenson.


=begin
Further Exploration
What do you think of this way of creating and initializing Book objects? (The
two steps are separate.) Would it be better to create and initialize at the same
time like in the previous exercise? What potential problems, if any, are
introduced by separating the steps?

MY ANSWER:
Both technically work just fine; however, I prefer to have them initialized via
the `intialize` constructor. This will ensure that there are no `nil` instance
variables if a getter method is invoked before a setter method has assigned a
value to an instance variable.
Also, with this specific example, you expose those setter methods that could be
used to unintentionally change the name/author of a book.
=end