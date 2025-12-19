// ==========================================
// EJERCICIOS: LISTAS Y COLECCIONES
// ==========================================

void main() {
  print('--- COMPROBACIÓN DE RESULTADOS ---\n');

  // Test 1: Básicos
  print('1. Extremos: ${obtenerExtremos([10, 20, 30, 40])}');
  // Esperado: [10, 40]

  // Test 2: Collection If (Menú Dinámico)
  print('2. Menú (Admin):    ${crearMenu(true)}');
  // Esperado: [Inicio, Panel Admin, Configuración]
  print('2. Menú (Usuario):  ${crearMenu(false)}');
  // Esperado: [Inicio, Configuración]

  // Test 3: Collection For (Transformación)
  print('3. Precios: ${formatearEtiquetas([10.0, 50.5])}');
  // Esperado: [Precio: $10.0, Precio: $50.5]

  // Test 4: Spread Operator (Unir listas)
  print('4. Equipos unidos: ${unirListas(['Rojo', 'Azul'], ['Verde'])}');
  // Esperado: [Rojo, Azul, Verde]

  // Test 5: Filtrado básico (Where)
  print('5. Solo pares: ${filtrarPares([1, 2, 3, 4, 5, 6])}');
  // Esperado: [2, 4, 6]
}

// --------------------------------------------------------------------------

// EJERCICIO 1: Métodos Básicos
// Recibe una lista de números.
// Retorna una NUEVA lista que contenga solo el primer y el último elemento.
// Pista: Usa .first y .last
List<int> obtenerExtremos(List<int> numeros) => [numeros.first, numeros.last];

// EJERCICIO 2: Collection If (Vital para Flutter)
// Crea una lista de Strings llamada 'menu'.
// Siempre debe tener 'Inicio'.
// Si esAdmin es true, agrega 'Panel Admin'.
// Siempre debe tener 'Configuración' al final.
// Retorna la lista.
List<String> crearMenu(bool esAdmin) => ['Inicio', if (esAdmin) 'Panel Admin', 'Configuracion'];

// EJERCICIO 3: Collection For
// Recibe una lista de precios (double).
// Retorna una lista de Strings con el formato "Precio: $[valor]".
// REQUISITO: Usa un 'for' dentro de los corchetes de la lista nueva.
List<String> formatearEtiquetas(List<double> precios) {
  // TU CÓDIGO AQUÍ:

  return [for(var valor in precios) ' Precio: $valor'];
}

// EJERCICIO 4: Spread Operator (...)
// Recibe dos listas de Strings (listaA y listaB).
// Retorna una sola lista que contenga todos los elementos de A seguidos de los de B.
// REQUISITO: Usa el operador ...
List<String> unirListas(List<String> listaA, List<String> listaB) {
  // TU CÓDIGO AQUÍ:

  return [...listaA, ...listaB];
}

// EJERCICIO 5: Filtrado (Where)
// Recibe una lista de enteros.
// Retorna una lista que solo contenga los números pares.
// Pista: .where() devuelve un Iterable, recuerda convertirlo .toList()
List<int> filtrarPares(List<int> numeros) {
  // TU CÓDIGO AQUÍ:
  List<int> result = numeros.where((x)=> x.isEven).toList();
  return result;
}
