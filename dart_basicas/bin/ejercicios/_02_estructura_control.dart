void main() {
  print('--- COMPROBACIÓN DE RESULTADOS ---\n');

  // Test 1: Mayor de edad
  print('1. Validar Edad (15): ${validarEdad(15)}'); // Esperado: "Menor"
  print('1. Validar Edad (20): ${validarEdad(20)}'); // Esperado: "Mayor"

  // Test 2: Precio con Descuento
  // "ESTUDIANTE" -> 10% descuento. "JUBILADO" -> 50%. Otro -> 0%.
  print('2. Descuento (100, ESTUDIANTE): ${calcularPrecioFinal(100, 'ESTUDIANTE')}'); // 90.0
  print('2. Descuento (100, NORMAL):     ${calcularPrecioFinal(100, 'NORMAL')}');     // 100.0

  // Test 3: Ternario
  print('3. Mensaje Login (true):  ${estadoSesion(true)}');  // "Bienvenido"
  print('3. Mensaje Login (false): ${estadoSesion(false)}'); // "Iniciar Sesión"

  // Test 4: Switch Semanal
  print('4. Día Semana (1): ${obtenerDiaSemana(1)}'); // "Lunes"
  print('4. Día Semana (8): ${obtenerDiaSemana(8)}'); // "Error"

  // Test 5: Lógica Compleja (Null + String vacío)
  print('5. Validar Email (null):       ${esEmailValido(null)}');            // false
  print('5. Validar Email (""):         ${esEmailValido("")}');              // false
  print('5. Validar Email ("user@ok"):  ${esEmailValido("user@ok")}');       // true
}

// --------------------------------------------------------------------------

// EJERCICIO 1: If - Else básico
// Retorna "Mayor" si la edad es >= 18, y "Menor" si no.
String validarEdad(int edad) {
  // TU CÓDIGO AQUÍ:
  if(edad >= 18){
    return 'Mayor';
  }else{
    return 'Menor';
  }
}

// EJERCICIO 2: Else If (Múltiples condiciones)
// Recibe precio y tipo de usuario.
// - Si es "ESTUDIANTE", aplica 10% de descuento.
// - Si es "JUBILADO", aplica 50% de descuento.
// - Cualquier otro, paga precio completo.
// Retorna el precio final.
double calcularPrecioFinal(double precio, String tipoUsuario) {
  // TU CÓDIGO AQUÍ:
  if(tipoUsuario == 'ESTUDIANTE'){
    precio = precio * 0.90;
  }else if(tipoUsuario == 'JUBILADO'){
    precio = precio * 0.5;
  }else{
    return precio;
  }
  return precio;
}

// EJERCICIO 3: Operador Ternario
// Recibe un booleano 'estaLogueado'.
// Si es true, retorna "Bienvenido".
// Si es false, retorna "Iniciar Sesión".
// REQUISITO: Usar operador ? :
String estadoSesion(bool estaLogueado) {
  // TU CÓDIGO AQUÍ:
  return estaLogueado ? 'Bienvenido': 'Iniciar Sesión';
}

// EJERCICIO 4: Switch
// Recibe un número del 1 al 7.
// 1 = "Lunes", 2 = "Martes", etc...
// Si el número no está entre 1 y 7, retorna "Error".
String obtenerDiaSemana(int dia) {
  // TU CÓDIGO AQUÍ:
  String? mensaje;
  switch (dia){
    case 1:
      mensaje = 'Lunes';
      break;
    case 2:
      mensaje = 'Martes';
      break;
    case 3:
      mensaje = 'Miercoles';
      break;
    case 4:
      mensaje = 'Jueves';
      break;
    case 5:
      mensaje = 'Viernes';
      break;
    case 6:
      mensaje = 'Sabado';
      break;
    case 7:
      mensaje = 'Domingo';
      break;
    default:
      mensaje = 'Error';
  }
  return mensaje;
}

// EJERCICIO 5: Lógica combinada (La trampa de JS vs Dart)
// Recibe un email que puede ser nulo (String?).
// Debe retornar true SOLAMENTE si:
// 1. El email NO es nulo.
// 2. Y el email NO está vacío (usa el método .isNotEmpty).
// Pista: Usa el operador && y recuerda el orden de evaluación.
bool esEmailValido(String? email) {
  // TU CÓDIGO AQUÍ:
  if(email != null && email.isNotEmpty){
    return true;
  }
  return false;
}