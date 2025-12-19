// ==========================================
// EJERCICIOS: MAPAS (OBJETOS TIPO JSON)
// ==========================================

void main() {
  print('--- COMPROBACIÓN DE RESULTADOS ---\n');

  // Test 1: Básico
  var libro = {'titulo': 'Dart For Dummies', 'paginas': 200};
  print('1. Info Libro: ${formatearLibro(libro)}'); 
  // Esperado: "Libro: Dart For Dummies (200 págs)"

  // Test 2: Map<String, dynamic> y Casting
  var pc = {
    'cpu': 'Intel i9', 
    'ram': 32, 
    'encendida': true
  };
  print('2. Mensaje PC: ${estadoPC(pc)}'); 
  // Esperado: "La PC Intel i9 tiene 32GB de RAM y está ENCENDIDA"

  // Test 3: Null Safety en Mapas
  // Simulamos datos incompletos de una API
  var usuario1 = {'nombre': 'Ana', 'vip': true};
  var usuario2 = {'nombre': 'Juan'}; // No tiene clave 'vip'
  
  print('3. Acceso Vip (Ana):  ${esUsuarioVip(usuario1)}'); // true
  print('3. Acceso Vip (Juan): ${esUsuarioVip(usuario2)}'); // false
  
  // Test 4: Modificación
  print('4. Inventario: ${agregarInventario({'Manzanas': 5}, 'Peras', 10)}');
  // Esperado: {Manzanas: 5, Peras: 10}
}

// --------------------------------------------------------------------------

// EJERCICIO 1: Acceso Básico
// Recibe un mapa con 'titulo' (String) y 'paginas' (int).
// Retorna un String: "Libro: [titulo] ([paginas] págs)"
// Pista: Usa ['clave'] para acceder.
String formatearLibro(Map<String, dynamic> libro) => 'Libro: ${libro['titulo']} ${libro['paginas']} pags';


// EJERCICIO 2: Casting (as)
// A veces Dart no sabe qué tipo sale del mapa (es dynamic).
// Recibe un mapa de PC.
// Retorna: "La PC [cpu] tiene [ram]GB de RAM y está [ENCENDIDA/APAGADA]"
// Pista: Para saber si está encendida, accede al bool. 
// Si te marca error de tipo, usa 'as String' o 'as int' al sacar el dato, 
// o confía en la interpolación.
String estadoPC(Map<String, dynamic> pc) {
  // TU CÓDIGO AQUÍ:
  return 'La pc ${pc['cpu']} tiene ${pc['ram']}GB de RAM y esta ${pc['encendida'] ? 'ENCENDIDA' : 'APAGADA'}';
}


// EJERCICIO 3: Null Safety en claves inexistentes
// Recibe un mapa de usuario.
// Retorna true si la clave 'vip' existe y es true.
// Retorna false si 'vip' es false O SI NO EXISTE la clave.
// Pista: Recuerda que mapa['clave'] devuelve null si no existe. 
// Usa el operador ?? para asegurar un booleano.
bool esUsuarioVip(Map<String, dynamic> usuario) {
  // TU CÓDIGO AQUÍ:
  
  return usuario['vip'] ?? false;
}


// EJERCICIO 4: Agregar elementos
// Recibe un mapa de inventario actual, un nuevo producto y su cantidad.
// Agrega el nuevo producto al mapa.
// Retorna el mapa actualizado.
Map<String, int> agregarInventario(Map<String, int> inventario, String producto, int cantidad) {
  // TU CÓDIGO AQUÍ:
  inventario[producto] = cantidad;
  return inventario;
}