// String
// 1. Crear una cadena de texto con una frase.
/* 


*/

let nombre = "Jonh" 
let apellido = "Mircha"
let lorem = 'Hello, World'

let saludo = new String("Hola, Saludos")


console.log(nombre, apellido, saludo)
console.log(
  nombre.length, 
  apellido.length, 
  saludo.length,
  nombre.toUpperCase(),
  apellido.toLocaleLowerCase(),
  lorem.includes("amet"),
  lorem.includes("jon"),
  lorem.trim("Espacios en blanco"),
  lorem.split(),
  lorem.split(" "),
  )
