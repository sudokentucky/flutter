// ==========================================
// EJERCICIOS: VARIABLES, TIPOS Y FECHAS
// ==========================================

void main() {
  print('--- COMPROBACIÓN DE RESULTADOS ---\n');

  // Test Ejercicio 1
  print('1. Interpolación: ${crearSaludo('Keneth', 26)}');
  // Esperado: "Hola Keneth, el próximo año tendrás 27 años."

  // Test Ejercicio 2
  print('2. Temperaturas: ${convertirFahrenheitACelsius(68)}');
  // Esperado: 20.0

  // Test Ejercicio 3
  print(
    '3. Null Safety (Con valor): ${formatearNombre('Daniel')}',
  ); // Esperado: "DANIEL"
  print(
    '3. Null Safety (Nulo):      ${formatearNombre(null)}',
  ); // Esperado: "ANÓNIMO"

  // Test Ejercicio 4
  print('4. Parseo Seguro: ${sumarPrecios('100', '200')}'); // Esperado: 300
  print('4. Parseo Seguro: ${sumarPrecios('100', 'hola')}'); // Esperado: 100

  // Test Ejercicio 5
  print('5. Fechas (Edad): ${calcularEdad(1990)}');
  // Esperado: La edad actual (ej. 33, 34 o 35 dependiendo del año actual)
}

// --------------------------------------------------------------------------

// EJERCICIO 1: Variables e Interpolación
// Objetivo: Retornar un String que diga: "Hola [nombre], el próximo año tendrás [edad + 1] años."
// Pista: Usa ${} para la operación matemática dentro del texto.
String crearSaludo(String nombre, int edad) {
  // TU CÓDIGO AQUÍ:
  return 'Hola $nombre, el proximo año tendras ${edad + 1}';
}

// EJERCICIO 2: Tipos Numéricos (double)
// Objetivo: Convertir Fahrenheit a Celsius. Fórmula: (f - 32) / 1.8
// Nota: Fíjate que el retorno es double, así que la división decimal funcionará bien.
double convertirFahrenheitACelsius(double fahrenheit) {
  // TU CÓDIGO AQUÍ:
  double resultado = (fahrenheit - 32) / 1.8;
  return resultado;
}

// EJERCICIO 3: Null Safety y Métodos de String
// Objetivo: Recibe un nombre que puede ser nulo (String?).
// Si el nombre existe, retórnalo en MAYÚSCULAS (usa .toUpperCase()).
// Si es nulo, retorna el texto "ANÓNIMO".
// Pista: Puedes usar if/else o el operador ??
String formatearNombre(String? nombre) {
  // TU CÓDIGO AQUÍ:

  return nombre?.toUpperCase() ?? 'ANONIMO';
}

// EJERCICIO 4: Parseo y TryParse
// Objetivo: Recibe dos precios en texto (String).
// Suma ambos precios. Si uno de los textos no es un número válido, asume que vale 0.
// Retorna la suma total (int).
// Pista: Usa int.tryParse() y el operador ?? 0
int sumarPrecios(String precio1, String precio2) {
  // TU CÓDIGO AQUÍ:
  int p1 = int.tryParse(precio1) ?? 0;
  int p2 = int.tryParse(precio2) ?? 0;
  return p1 + p2;
}

// EJERCICIO 5: DateTime (Cálculo básico)
// Objetivo: Calcular la edad de una persona basado en su año de nacimiento.
// 1. Obtén el año actual del sistema (DateTime.now().year).
// 2. Réstale el anioNacimiento.
// 3. Retorna el resultado.
int calcularEdad(int anioNacimiento) {
  // TU CÓDIGO AQUÍ:
  int anioActual = DateTime.now().year;
  int diferencia = anioActual - anioNacimiento;
  return diferencia;
}
