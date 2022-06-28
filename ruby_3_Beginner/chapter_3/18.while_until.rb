1.upto(5) { |number| puts number }

puts "while"
x = 1
while x < 100
  puts x
  x = x * 2
end

puts "No while"


2.upto(100) { |number| puts number }

puts "unless"
x =  1
until x > 99
  puts x
  x = x * 2
end

puts 'Unless 2' 
i = 1
i = i * 2 until i > 1000
puts i
