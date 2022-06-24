"This is a test".scan(/[aeiou]/) { |x| puts x}

puts "You can also specify ranges of characters inside the square brackets"

"This is a test".scan(/[aieou]/) { |x| puts x }

puts "Mach any of a, e, i, o, y"

"This is a test".scan(/[a-m]/) { |x| puts x }

