puts "String"
"xyz".scan(/./) { |letter| puts letter }

puts "Each letter is fed to the block, printed to screen"
"This is a test".scan(/../) { |x| puts x }

puts "only letters and digitis"
"This is a test".scan(/\w\w/) { |x| puts x }

"The car costs $1000 and the cat cost $10".scan(/\d+/) do |x|
  puts "Extract numbers from a strign"
  puts x
end

puts "Each individual digit at a time"

"The car costs $1000 and the cat cost $10".scan(/\d/) do |x|
  puts x 
end
