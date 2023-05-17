const estudiantes = ["JUAN", "MIGUEL", "JOSE", "HOBERTT"];

for (let estudiante of estudiantes) {
  console.log(estudiante);
}
// Salida: JUAN, MIGUEL, JOSE, HOBERTT


///Buscar si un elemento está en el array con el método includes:

const estudiantes2 = ["JUAN", "MIGUEL", "JOSE", "HOBERTT"];

console.log(estudiantes2.includes("JUAN"));
// Salida: true

console.log(estudiantes2.includes("PEDRO"));
// Salida: false


/// Buscar el índice de un elemento en el array con el método indexOf:

const estudiantes3 = ["JUAN", "MIGUEL", "JOSE", "HOBERTT"];

console.log(estudiantes3.indexOf("JOSE"));
// Salida: 2

console.log(estudiantes3.indexOf("PEDRO"));
// Salida: -1 (no se encontró el elemento)