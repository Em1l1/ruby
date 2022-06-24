# Comparation Operators and Expresions

# have 11 years, print code
age = 10

puts "You're too young to use this system" if age < 31

puts ''

# Have 12 year, and not 20 year, print code.
age = 14
puts "You're a teenager" if age > 12 && age < 20

# Have NOT 12 or 20, print code.
age = 24
puts "You're NOT a teenager" unless age > 12 && age < 20


# Have 24 years. print code

age = 24
puts "You're 24!" if age == 24

=begin
Comparison             Meaning
x > y                  greater than
x < y                  less than
x == y                 Equal to
x >= y                 greater than or equal to
x <= y                 less than or equal to
x <=> y                Comparison; returns 0 if x and y are equal, 1 if x is higher, and -1 if x is lower
=end

age = 90
puts "You're either very young or very old!" if age > 80 || age < 10

gender = "male"
age = 5
puts "A very young or old man | male" if gender == "male" && (age < 18 || age > 18)
