x = 1
puts x
x += 1
puts x
x += 1
puts x


5.times do puts "Test" end

puts 'number of times to loop'
1.upto(5) do |number|
  puts number
end

puts '' 
puts ''

puts 'Second'
1.step(100, 5) { |second| puts second }
# second

puts 'Hour'
10.downto(1) { |hour| puts hour}
# hour
puts 'min'
1.upto(5) { |min| puts min}
# min

# float
=begin 
  foat number = 1.0.to_f
  integer number = 1.0.to_i
  string number = 1.0.to_s
=end