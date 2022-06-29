lines = File.readlines("text.txt")
line_count = lines.size
text = lines.join

puts "#{line_count} lines"
total_characters = text.length
puts "#{total_characters} characters"

total_characters_nospaces = text.gsub(/\s+/, '').length
puts "#{total_characters_nospaces} characters excluding spaces"

puts 'scan'
puts "This is a test".scan(/\w+/).join('-')

puts 'Length'
puts "This is a test".scan(/\w+/).length
puts "#{total_characters_nospaces}".scan(/\w+/).length
puts "#{total_characters}".split.length


puts 'simply'
text = "First-class decisions require clear-headed thining."
puts "Scan method: #{text.scan(/\w+/).length}"
puts "Split method: #{text.split.length}"
