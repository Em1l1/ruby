class Pet
  attr_accessor :name, :age, :gender, :color
end

class Cat < Pet
  def will
    puts name = 'Will'
    puts age = 2
    puts gender = 'Female'
    puts color = 'Orange'
  end
end

class Dog < Pet
  def cortes
    puts 'New Dog'
    puts 'Woof!'
    puts name = 'Cortes'
    puts age = 2
    puts gender = 'Male'
    puts color = 'Black'
  end
end

class Snake < Pet
  def smith
    puts 'Smith'
  end
end


will = Cat.new
puts will.will

cortes = Dog.new
#puts cortes.name = 'Cortes'
#puts cortes.age = 4
#puts cortes.gender = 'Male'
#puts cortes.color = 'Black'
puts cortes.cortes

pierro = Snake.new
puts pierro.name = 'Pierro'
puts pierro.age = 3
puts pierro.gender = 'Female'
puts pierro.color = 'yellow and black'

