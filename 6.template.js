let nombre = "Jon"
let apellido = "Mircha"

// Saludo
let saludo = 'Hola mi nombre es ' + nombre + ' ' + apellido + '.'
console.log('First')
console.log(saludo)

// Template
let saludo2 = `Hola mi nombre es ${nombre} ${apellido}.`
console.log('Second')
console.log(saludo2)

let ul2 = `
  <ul>
    <li>${nombre}</li>
    <li>${apellido}</li>
    <li>${nombre}</li>
    <li>${apellido}</li>
  </ul>
`

console.log(ul2)