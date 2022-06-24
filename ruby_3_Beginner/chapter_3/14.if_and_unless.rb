age = 10
puts "You're too young to use this system" if age < 18

puts "Age is under 18"
age = 10
if age < 18
  puts "You're too young to use this sytem"
end

puts "age is 12"
age = 12
if age < 18
  puts "You're to young to use this system"
  puts "So we're going to exit your program now"
  exit
end

puts ''
puts "Age is 10"
age = 10
unless age >= 18
  puts "You're too young to use this system"
  puts "So we're going to exit your program now"
  exit
end

puts ''
puts "Age is 19"
age = 19
if age < 19
  puts "You can't drink in most of the United States"
  if age >= 18
    puts "But you can in the United Kingdom!"
  end
end

age = 5
if age < 18
  puts "You're too young to use this system"
else
  puts "You can use this system"
  
end
