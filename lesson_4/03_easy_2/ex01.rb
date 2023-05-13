# You are given the following code:

class Oracle
  def predict_the_future
    "You will " + choices.sample
  end

  def choices
    ['eat a nice lunch', 'take a nap soon', 'stay at work late']
  end
end

# What is the result of executing the following code:

oracle = Oracle.new
oracle.predict_the_future

=begin
A new object from the `Oracle` class is instantiated. Then we invoke the
`predict_the_future` instance method. Nothing is output without a `p` or `puts`
call; however, if one was there the output would be:

=> You will take a nap soon (result will vary)
=end
