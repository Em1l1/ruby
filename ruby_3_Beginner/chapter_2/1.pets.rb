class Pet
  attr_accessor :name, :age, :gender, :color
end

class Cat < Pet
end

class Dog < Pet
end

class Snake < Pet
end

will = Cat.new
puts will.name = 'Will'
puts will.age = 2
puts will.gender = 'Female'
puts will.color = 'Orange'

cortes = Dog.new
puts cortes.name = 'Cortes'
puts cortes.age = 4
puts cortes.gender = 'Male'
puts cortes.color = 'Black'

pierro = Snake.new
puts pierro.name = 'Pierro'
puts pierro.age = 3
puts pierro.gender = 'Female'
puts pierro.color = 'yellow and black'

