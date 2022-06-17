# 10.times do print "Hello, World! " end
class Person
  attr_accessor :name, :age, :gender

end

david = Person.new
puts david.name = 'David'
puts david.age = 23
puts david.gender = 'Male'

