// ==========================================
// EJERCICIOS: CLASES Y OBJETOS
// ==========================================

void main() {
  print('--- COMPROBACIÓN DE RESULTADOS ---\n');

  // Test 1: Clase Simple
  var p1 = Producto('Smartphone', 800.0);
  print('1. Producto: $p1');
  // Esperado: Smartphone ($800.0)

  // Test 2: Constructor Nombrado
  var p2 = Producto.oferta('Funda');
  print('2. Oferta:   $p2');
  // Esperado: Funda ($10.0)

  // Test 3: Clase Estilo Flutter (Named Parameters)
  var u1 = Usuario(nombre: 'Keneth', email: 'keneth@dev.com');
  print('3. Usuario:  ${u1.nombre} - ${u1.email}');
  // Esperado: Keneth - keneth@dev.com

  // Test 4: Validación (Assert)
  // Descomenta la siguiente línea para probar que el assert detiene el programa
  var u2 = Usuario(nombre: '', email: 'test');
}

// --------------------------------------------------------------------------

// EJERCICIO 1: Definición Básica
// 1. Crea la clase 'Producto'.
// 2. Propiedades: 'nombre' (String) y 'precio' (double).
// 3. Constructor estándar que inicialice ambas (usa this.variable).
// 4. Sobreescribe toString() para devolver: "$nombre (\$$precio)"
class Producto {
  // TU CÓDIGO AQUÍ:
  String nombre;
  double precio;

  Producto(this.nombre, this.precio);

  // EJERCICIO 2: Constructor Nombrado
  // Crea un constructor llamado 'oferta' que reciba SOLO el nombre.
  // El precio debe asignarse automáticamente a 10.0.
  // Pista: Usa la lista de inicialización -> : precio = 10.0;

  // TU CÓDIGO AQUÍ (Constructor .oferta):

  Producto.oferta(this.nombre) : precio = 10;

  @override
  String toString() => '$nombre (\$$precio)';
}

// EJERCICIO 3: Estilo Flutter (Named Parameters & Assert)
// 1. Crea la clase 'Usuario'.
// 2. Propiedades FINAL: 'nombre' y 'email' (Strings).
// 3. Constructor con parámetros nombrados ({}) y required.
// 4. Agrega un ASSERT para asegurar que el nombre NO esté vacío.
//    Sintaxis: Constructor(...) : assert(condicion, 'Mensaje');
class Usuario {
  // TU CÓDIGO AQUÍ:

  final String nombre;
  final String email;

  Usuario({required this.nombre, required this.email})
    : assert(nombre.isNotEmpty, 'El nombre no puede ir vacio');
}
