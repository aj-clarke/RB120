# Alan created the following code to keep track of items for a shopping cart
#application he's writing:

class InvoiceEntry
  attr_reader :quantity, :product_name

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    # prevent negative quantities from being set
    quantity = updated_count if updated_count >= 0
  end
end

=begin
There are two issues:
1. When dealing with assignment, you have to use either `self.quantity` or
   `@quantity`. If not then Ruby interprets `quantity` as a method variable
   instead of an instance variable
2. There needs to be either a manual setter method defined, an `attr_writer`
   setter methodassigned for :quantity to allow the instance variable to be
   updated
Wrong, I was close, read below:

LS ANSWER:
The problem is that since quantity is an instance variable, it must be accessed
with the @quantity notation when setting it. Even though attr_reader is defined
for quantity, the fact that it's a reader means that there is implicitly a
method for retrieving the value (a "getter") but the setter is undefined. So
there are two possible solutions:

1. change attr_reader to attr_accessor, and then use the "setter" method like
   this: self.quantity = updated_count if updated_count >= 0.
2. reference the instance variable directly within the update_quantity method,
   like this @quantity = updated_count if updated_count >= 0
=end