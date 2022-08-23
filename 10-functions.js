function estoEsUnaFuncion() {
  console.log("Uno");
  console.log("Dos");
  console.log("Tres");
  console.log("Cuatro");
}

estoEsUnaFuncion();

function unaFuncionQueDevuelveValor() {
  console.log("Ingles");
  // return 19;
  console.log("Spanish");
  console.log("French");
  console.log("Germany");
  return "La funcion ha retornado una Cadena de texto";
}

let valorDeFuncion = unaFuncionQueDevuelveValor();

console.log(valorDeFuncion);

// parametros Invocacion
function saludar(nombre, edad) {
  console.log(`Hola mi nombre es ${nombre} y tengo ${edad} años`);
}

saludar("Kenai", 7);



// Funciones declaradas VS funciones expresadas
funcionDeclarada();

function funcionDeclarada() {
  console.log("Esto es una funcion declarada, puede invocarse en cualquir parte de nuestro codigo, incluso antes de que la funcion sea declarada");
} 

funcionDeclarada();

// Funcion anonima
// functionExpresada();

const functionExpresada = function () {
  console.log("Esto es una funcion expresada, es decir: una funcion que se le ha asignado como valor a una variable, si invocamos esta funcion antes de su definicion JS nos dira....");
}

functionExpresada();
