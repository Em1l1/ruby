[1, "test", 2, 3, 4].each { |element| puts element.to_s + "X" }

puts "collect method"

[1, 2, 3, 4].collect { |element| puts element * 2 }


puts "The old-fashioned way"
a = [1, "test", 2, 3, 4]
i = 0

while ( i < a.length)
  puts a[i].to_s + "x"
  i += 1
end

puts "Array addition and Concatenation"

x = [1, 2, 3]
y = ["a", "b", "c"]
z = x + y
p z


puts " "
puts "Array subtraction and Difference"
x = [1, 2, 3, 4, 5]
y = [1, 2, 3]
z = x - y
p z

puts " "
puts "Checking for an Empty Array"
s = []
puts "s is empty" if s.empty?


puts ""
puts "Checking Array for a Certain Item"
x = [1, 2, 3]
p x.include?("x")
p x.include?(3)

puts ""
puts "Accessing the First and Last Elements of the Array"
x = [1, 2, 3]
puts x.first
puts x.last

puts ''
puts "You'll get that number of items from the start or the end of the array"
x = [1, 2, 3]
puts x.first(2).join("-")

puts ''
puts "Reversing the Order of the Array's Elements"
x = [1, 2, 3]
p x.reverse
