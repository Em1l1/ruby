puts "Elsif and case"
fruit = "orange"
color = "orange" if fruit == "orange"
color = "green" if fruit == "apple"
color = "yellow" if fruit == "banana"

puts "if elsif end"
fruit = "banana"
if fruit == "orange"
  color = "orange"
elsif fruit == "apple"
  color = "green"
elsif fruit == "banana"
  color = "yellow"
else 
  color = "unknow"
end

puts fruit


puts "Case block"
print "primera parte | Ingresa el nombre de una fruta: "
fruit = gets.chomp
# fruit = "yellow"
case fruit
when "orange"
  puts color = "orange"
when  "apple"
  puts color = "green"
when "banana"
  puts color = "yellow"
else
  puts color = "unknown"
end

puts ''
print "Segunda parte | Ingresa el nombre de una fruta: "
fruit = gets.chomp
color = case fruit
when "orange"
  puts "orange"
when "apple"
  puts "green"
when "banana"
  puts "yellow"
else
  puts "unknow"
end
