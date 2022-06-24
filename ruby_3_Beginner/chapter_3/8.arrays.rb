puts "Basic array"
x = [1, 2, 3, 4, 5]

puts x

puts "This called an element references"
x = [1, 2, 3, 4]
puts x[2]

puts "manipulated numbers"
x[2] += 1
puts x[2]

puts "or"
x[2] = 'Fish' * 3
puts x[2]


puts 'Array empty'
y = []
puts y

puts 'add element array'
y << "Word"
y << "Good"

puts y

puts "Popping is the process of retrieving and removing items from the end the array"
y << "Play"
y << "Fun"

puts y.pop
puts y.pop
puts y.length

y = ["Word", "Play", "Fun"]
puts y.join

y = ["word", "play", "fun"]
puts y.join(', ')
