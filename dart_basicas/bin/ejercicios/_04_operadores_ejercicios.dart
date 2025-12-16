// ==========================================
// EJERCICIOS: OPERADORES ESPECIALES
// ==========================================

void main() {
  print('--- COMPROBACIÓN DE RESULTADOS ---\n');

  // Test 1: Minutos a Horas (División Entera)
  print('1. 130 mins son: ${calcularHoras(130)} horas'); // Esperado: 2

  // Test 2: Null Aware
  print(
    '2. Mensaje (null):    ${mensajeBienvenida(null)}',
  ); // Esperado: "Hola, Usuario"
  print(
    '2. Mensaje ("Juan"):  ${mensajeBienvenida("Juan")}',
  ); // Esperado: "Hola, Juan"

  // Test 3: Lógica y Asignación (??=)
  print('3. Configuración Inicial: ${configurarVolumen(null)}'); // Esperado: 50
  print('3. Configuración Fija:    ${configurarVolumen(20)}'); // Esperado: 20

  // Test 4: Cascada
  // Este test imprime el resultado de usar cascada en una clase simple
  print('4. Constructor Cascada: ${crearPerfil().toString()}');
  // Esperado: Perfil: [DartVader] - Nivel: 99
}

// --------------------------------------------------------------------------

// EJERCICIO 1: División Entera (~/)
// Recibe una cantidad de minutos (int).
// Retorna la cantidad de HORAS completas que caben en esos minutos.
// NO uses .floor() ni toInt(). Usa el operador especial.
int calcularHoras(int minutos) => minutos ~/ 60;

// EJERCICIO 2: Null Aware (??)
// Recibe un nombre (String?).
// Retorna "Hola, [nombre]". Si el nombre es null, usa "Usuario".
// RESTRICCIÓN: No usar if-else. Usar operador ??.
String mensajeBienvenida(String? nombre) => 'Hola, ${nombre ?? "Usuario"}';

// EJERCICIO 3: Asignación si es nulo (??=)
// Recibe un volumen actual que puede ser nulo.
// Si es null, asígnale el valor 50.
// Retorna el volumen final.
int configurarVolumen(int? volumenActual) {
  volumenActual ??= 50;
  return volumenActual;
}

// EJERCICIO 4: Notación de Cascada (..)
// Completa la función para crear un objeto Perfil.
// Usa cascada para asignar nombre 'DartVader' y nivel 99 en una sola sentencia.
class Perfil {
  String nombre = '';
  int nivel = 0;

  @override
  String toString() => 'Perfil: [$nombre] - Nivel: $nivel';
}

Perfil crearPerfil() {
  var p = Perfil()
    ..nombre = 'DartVader'
    ..nivel = 99;

  return p;
}
