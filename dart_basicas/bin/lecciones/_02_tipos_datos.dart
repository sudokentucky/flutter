void main() {
  print('--- LECCIÓN 02: TIPOS DE DATOS Y NULL SAFETY ---\n');

  // ============================================
  // 1. NÚMEROS (int y double)
  // ============================================
  int edad = 26;
  double precio = 10.50;
  
  // Dato curioso: 'num' es el padre de int y double.
  // Admite ambos valores.
  num numeroGenerico = 10;
  print('1. Num (como int): $numeroGenerico');
  
  numeroGenerico = 10.5;
  print('1. Num (como double): $numeroGenerico');


  // ============================================
  // 2. STRINGS (Cadenas)
  // ============================================
  // Se pueden usar comillas simples '' o dobles ""
  String nombre = 'Keneth';
  String apellido = "Velasquez";
  
  // Multilínea (con triple comilla) - Útil para textos largos
  String parrafo = '''
  Este es un texto
  que ocupa varias
  líneas.
  ''';
  
  print('2. Multilínea: $parrafo');
  
  // Interpolación (Recordatorio)
  print('2. Interpolación: Hola $nombre ${apellido.toUpperCase()}');


  // ============================================
  // 3. BOOLEANOS (Lógica)
  // ============================================
  bool esAdmin = false;
  bool tieneAcceso = true;
  
  // En Dart tienes que ser explícito, no funciona if(1) o if("hola")
  if (tieneAcceso) {
    print('3. Booleans: Acceso concedido');
  }


  // ============================================
  // 4. NULL SAFETY (Seguridad Nula)
  // ============================================
  // Dart protege las variables para que no sean "null" por accidente.
  
  // int cantidad; // ERROR: Debe inicializarse
  
  // El signo de interrogación (?) hace la variable "Nullable"
  int? cantidadOpcional;
  
  print('4. Nullable (vacío): $cantidadOpcional'); // Imprime null
  
  cantidadOpcional = 5;
  print('4. Nullable (con valor): $cantidadOpcional');
  
  // TRUCO: Operador "Null Aware" (??)
  // Significa: "Si es nulo, usa este valor por defecto"
  int total = cantidadOpcional ?? 0; 
  print('4. Null Aware: $total');
}