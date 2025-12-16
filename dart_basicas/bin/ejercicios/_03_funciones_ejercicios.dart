// ==========================================
// EJERCICIOS: FUNCIONES Y ENCAPSULAMIENTO
// ==========================================

void main() {
  print('--- COMPROBACIÓN DE RESULTADOS ---\n');

  // Test 1: Función Básica
  print('1. Multiplicar (5 * 4): ${multiplicar(5, 4)}'); // Esperado: 20

  // Test 2: Arrow Function  
  print('2. Es Par (4): ${esPar(4)}'); // Esperado: true
  print('2. Es Par (5): ${esPar(5)}'); // Esperado: false

  // Test 3: Parámetros Nombrados (Simulación de Widget)
  // Nota: Fíjate cómo se llama a la función, usando los nombres de los parámetros.
  String boton1 = crearBoton(texto: 'Guardar', color: 'Azul');
  String boton2 = crearBoton(texto: 'Cancelar'); // Color debe ser 'Blanco' por defecto
  
  print('3. Botón 1: $boton1'); // Esperado: [Boton: Guardar | Color: Azul]
  print('3. Botón 2: $boton2'); // Esperado: [Boton: Cancelar | Color: Blanco]

  // Test 4: Getters y Setters
  Termostato t = Termostato();
  t.temperatura = 25; // Setter
  print('4. Temperatura actual: ${t.temperatura}'); // Getter (25.0)
  
  // Prueba de validación (Descomenta para probar el error si quieres)
  // t.temperatura = -100; // Debería lanzar error o print de advertencia
}

// --------------------------------------------------------------------------

// EJERCICIO 1: Función con Posicionales
// Crea una función llamada 'multiplicar' que reciba dos enteros y retorne el producto.
int multiplicar(int a, int b) {
  // TU CÓDIGO AQUÍ:
  return a*b;
}

// EJERCICIO 2: Arrow Function
// Crea una función 'esPar' que reciba un entero y retorne true si es par.
// REQUISITO: Debe usar sintaxis de flecha (=>).
bool esPar(int numero) => numero % 2 == 0;


// EJERCICIO 3: Parámetros Nombrados (Named Parameters)
// Crea una función 'crearBoton' que reciba:
// - texto (String, requerido)
// - color (String, opcional, valor por defecto 'Blanco')
// Retorna un String con formato: "[Boton: TEXTO | Color: COLOR]"
// Pista: Usa { } en los argumentos.
String crearBoton({required String texto, String color = 'Blanco'}) { 
  // CORRIGE LA FIRMA DE LA FUNCIÓN ARRIBA PARA QUE FUNCIONE
  
  return '[Boton: $texto | Color: $color]]';
}


// EJERCICIO 4: Clase con Getters y Setters
// Completa la clase Termostato.
// 1. Crea una variable privada double _celsius.
// 2. Crea un Setter 'temperatura' que asigne el valor a _celsius.
//    - Validación: Si la temperatura es menor a -273, imprime "Error: Temperatura imposible" y no asignes nada.
// 3. Crea un Getter 'temperatura' que retorne el valor de _celsius.
class Termostato {
  double _celsius = 0;

  // TU CÓDIGO AQUÍ (Setter y Getter):
  set temperatura(double valor){
    if(valor < -273) throw "Error: Temperatura imposible";
    _celsius = valor;
  }
  double get temperatura => _celsius;
}