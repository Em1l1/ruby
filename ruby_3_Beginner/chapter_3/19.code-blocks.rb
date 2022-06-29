x = [1, 2, 3, 4]
x.each { |y| puts y }

puts 'alternative'
x = [1, 2, 3, 4]
x.each do |y|
  puts y
end

puts ''
puts 'Insted of an expllicit variable'
x = [1, 2, 3]
x.each do
  puts _1
end

puts ''
puts 'Handle code blocks'
def each_vowel(&code_block)
  %w{a e i o u}.each { |vowel| code_block.call(vowel) }
end

each_vowel { |vowel| puts vowel }

puts ''
puts 'Handle'
def each_vowel
  %w{a e i o u}.each { |vowel| yield vowel }
end

each_vowel { |vowel| puts vowel }

puts ''
puts 'Proc'
print_parameter_to_screen = Proc.new { |x| puts x }
print_parameter_to_screen.call(100)
