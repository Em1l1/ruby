# x = ['A', 'B','C,', 'D', 'E' .. and so on.. ]

('A'..'Z').to_a.each { |letter| print letter }
('A'..'Z').each { |letter| puts letter }
puts ('A'..'Z').include?('R')
puts ('A'..'Z').include?('r')

puts 'a'
a = [2, 4, 6, 8, 10, 12]
p a[1..3]

p a[1..3] = ["a", "b", "c"]
