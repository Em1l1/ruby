class Pet
  # attr_accessor :name, :age, :color
  def initialize(name, age, color)
    @name = name
    @age = age
    @color = color
  end
end

class Dog < Pet
  def dog_barking
    puts 'Your name my Dog is #{@name}.' 
    puts 'Have age is years #{@age} old.'
    puts 'Color is #{@color}'
    puts "Woof!"
  end
end

#dog_barking = Dog.new(@name.to_s, @age.to_i, @color.to_s)
diego = Dog.new('Diego', 3, 'White and Black')
puts diego

