puts "Comma"
puts "This is a test".scan(/\w/).join(',')

puts "You can use the split"
puts "Short sentence. Another. No more.".split(/\./).inspect

puts "Splitting on newlines, or multiple characters at once"
puts "Words with lost of spaces".split(/\s+/).inspect

puts "altenative inspect p"
p "words with lots of spaces".split(/\s+/)
