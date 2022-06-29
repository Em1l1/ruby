current_situation = :good
puts "Everything is fine" if current_situation == :good
puts "PANIC!" if current_situation == :bad

current_situation = "good"
puts "Everything is fine" if current_situation == "good"
puts "PANIC!" if current_situation == "bad"

puts s = { key: "value" }
puts person1 = { name: "Freud", age: 20, gender: :male }
puts person2 = { name: "Laura", age: 23, gender: :female }
