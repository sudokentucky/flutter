void main() {
  print('--- LECCIÓN 04: ESTRUCTURAS DE CONTROL ---\n');

  // ============================================
  // 1. IF - ELSE (La regla de oro: BOLEANOS PUROS)
  // ============================================
  int edad = 17;

  // ERROR COMÚN DE JS:
  // if (edad) { ... } // Esto da error en Dart,  Edad es int, no bool.
  
  if (edad >= 18) {
    print('1. IF: Es mayor de edad');
  } else {
    print('1. IF: Es menor de edad');
  }


  // ============================================
  // 2. ELSE IF y OPERADORES LÓGICOS (&&, ||)
  // ============================================
  // && = AND (Y)
  // || = OR (O)
  // !  = NOT (Negación)
  
  bool tieneTicket = true;
  bool esVip = false;

  if (tieneTicket && esVip) {
    print('2. Lógica: Pasa a la zona VIP');
  } else if (tieneTicket && !esVip) { 
    print('2. Lógica: Pasa a la zona General');
  } else {
    print('2. Lógica: No puede pasar');
  }


  // ============================================
  // 3. OPERADOR TERNARIO (? :)
  // ============================================
  // Es un "if-else" en una sola línea. 
  // FUNDAMENTAL EN FLUTTER para pintar pantallas condicionales.
  // Sintaxis: condicion ? valor_si_verdadero : valor_si_falso;

  String estadoCivil = 'Soltero';
  String mensaje = (estadoCivil == 'Casado') ? 'Felicidades' : 'A disfrutar';
  
  print('3. Ternario: $mensaje');
  
  // Ejemplo real de Flutter (imaginario):
  // color: estaActivo ? Colors.green : Colors.grey;


  // ============================================
  // 4. SWITCH (Para múltiples casos)
  // ============================================
  // Dart soporta switch con Strings y Números.
  String semaforo = 'ROJO';

  switch (semaforo) {
    case 'VERDE':
      print('4. Switch: Avanzar');
      break; // El break es obligatorio para salir del caso
    case 'AMARILLO':
      print('4. Switch: Precaución');
      break;
    case 'ROJO':
      print('4. Switch: Detenerse');
      break;
    default:
      print('4. Switch: Color desconocido');
  }
  
  // ============================================
  // 5. ASSERT (Solo en desarrollo)
  // ============================================
  // Sirve para atrapar errores mientras programas. 
  // Si la condición es falsa, la app se detiene. En producción se ignoran.
  // assert(edad >= 0, 'La edad no puede ser negativa');
}