=begin
- Create a class 'Student' with attributes name and grade.
  - Do NOT make the grade getter public, so joe.grade will raise an error.

- Create a better_grade_than? method, that you can call like so...
=end

class Student
  attr_reader :name
  
  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(name)
    get_grade(self) > get_grade(name)
  end

  protected

  attr_reader :grade

  def get_grade(name)
    name.grade
  end
end

joe = Student.new('joe',95)
bob = Student.new('bob', 91)

puts "Well done!" if joe.better_grade_than?(bob)