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

  def bark(i)
    i.times do
      puts "Woff!"
    end
  end
end

class Snake < Pet
  def pierro
    puts name = 'Pierro'
    puts age = 3
    puts gender = 'Female'
    puts color = 'yellow and black'
  end
end


will = Cat.new
puts will.will

cortes = Dog.new
puts cortes.cortes

my_dog = Dog.new
my_dog.bark(4)

pierro = Snake.new
puts pierro.pierro


