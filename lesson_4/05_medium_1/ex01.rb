# Ben asked Alyssa to code review the following code:

class BankAccount
  attr_reader :balance

  def initialize(starting_balance)
    @balance = starting_balance
  end

  def positive_balance?
    balance >= 0
  end
end

=begin
Alyssa glanced over the code quickly and said - "It looks fine, except that you
forgot to put the @ before balance when you refer to the balance instance
variable in the body of the positive_balance? method."

"Not so fast", Ben replied. "What I'm doing here is valid - I'm not missing an
@!"

Who is right, Ben or Alyssa, and why?

ANSWER:
I believe Ben is right. There is a getter method created from the `attr_reader`
method being defined on line 4. Referencing `balance` is obtaining the balance
value via the getter method instead of calling on the @balance instance variable
directly.
=end