
people = { 
  fred: {
    name: "Fred Elliot",
    age: 63,
    gender: "male",
    fovorite_painters: ["Monet", "Constable", "Da Vinci"]
  },
  janet: { 
    name: "Janet S Porter",
    age: 55,
    gender: "female"
  }
}

puts people[:fred][:age]
puts people[:janet][:gender]
puts people[:janet]
puts people[:fred][:fovorite_painters].length
puts people[:fred][:fovorite_painters].join(",")
