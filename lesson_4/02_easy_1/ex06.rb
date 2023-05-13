# What is the default return value of to_s when invoked on an object? Where
# could you go to find out if you want to be sure?

=begin

The default return value of the `#to_s` method when invoked on an object is
a string representation of the objects class and its hexadecimal ID (or an
encoding of the object id).

To be sure, we can check the documentation of the `Object` class:
Returns a string representing obj. The default to_s prints the object's class
and an encoding of the object id. As a special case, the top-level object that
is the initial execution context of Ruby programs returns “main''.
=end