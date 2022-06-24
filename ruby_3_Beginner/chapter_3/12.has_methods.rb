puts "Iterating Throught Hash Elements"
x = { "a" => 1, "b" => 2 }
x.each { |key, value| puts "#{key} equals #{value}" }

puts " "
puts "Retrieving keys"
x = { a: 1, b: 2, c: 3 }
p x.keys
p x.values

puts "Deleting Has Elements"
x = { a: 1, b: 2 }
x.delete(:a)
p 

puts "Deleting Hash Elements Conditionally"
x = { a: 100, b:20 }
x.delete_if { |key, value| value < 25 }
p x
