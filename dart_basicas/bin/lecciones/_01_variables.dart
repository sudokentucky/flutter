void main() {
  print('--- LECCIÓN 01: VARIABLES Y CONSTANTES ---\n');

  // ============================================
  // 1. VAR (Inferencia de tipos)
  // ============================================
  // Dart deduce el tipo por el valor inicial.
  // Una vez asignado, el tipo NO puede cambiar.
  var pais = 'Guatemala'; // Se infiere como String
  // pais = 100; // ERROR: No puedes meter un numero en una variable String
  pais = 'México'; // Correcto
  print('1. Var (String): $pais');


  // ============================================
  // 2. DYNAMIC (El comodín)
  // ============================================
  // Permite cambiar el tipo de dato. Es como var en JS antiguo.
  // Úsalo solo si es estrictamente necesario (evita errores).
  dynamic variableLoca = 'Hola';
  print('2. Dynamic (Inicio): $variableLoca');
  
  variableLoca = 100; // Cambio a int
  print('2. Dynamic (Cambio a int): $variableLoca');
  
  variableLoca = true; // Cambio a bool
  print('2. Dynamic (Cambio a bool): $variableLoca');


  // ============================================
  // 3. FINAL (Inmutabilidad en tiempo de ejecución)
  // ============================================
  // Una vez se le da un valor, no se puede cambiar.
  // Se usa para valores que se calculan al correr la app (ej. fecha actual).
  final fechaActual = DateTime.now();
  // fechaActual = DateTime.now(); // ERROR: No se puede reasignar
  print('3. Final: $fechaActual');


  // ============================================
  // 4. CONST (Inmutabilidad en tiempo de compilación)
  // ============================================
  // El valor debe conocerse ANTES de ejecutar el programa.
  // Es más rápido en memoria que final.
  const double pi = 3.1416;
  //const String saludoFijo = 'Bienvenido';
  print('4. Const: $pi');
  
  
  // ============================================
  // 5. LATE (Inicialización tardía)
  // ============================================
  // Le prometes a Dart que le darás valor antes de usarla, 
  // pero no lo tienes en este momento exacto.
  late String descripcion;
  
  // print(descripcion); // ERROR: Si la usas antes de asignarla, la app explota.
  
  descripcion = 'Cargando datos...'; // Asignación posterior
  print('5. Late: $descripcion');
}