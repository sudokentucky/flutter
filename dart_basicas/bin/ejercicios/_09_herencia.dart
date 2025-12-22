// ==========================================
// EJERCICIOS: HERENCIA
// ==========================================

void main() {
  print('--- COMPROBACIÓN DE RESULTADOS ---\n');

  // Test 1: Herencia y Super
  // Empleado hereda nombre de Persona, pero agrega salario.
  var emp = Empleado('Ana', 2000.0);
  print('1. Empleado: $emp'); 
  // Esperado: Empleado: Ana - Sueldo: $2000.0
  // (Nota: Tendrás que sobreescribir toString)

  // Test 2: Abstract Class
  // El sistema de pagos procesa diferentes métodos.
  procesarPago(Paypal(), 100);
  procesarPago(Tarjeta(), 500);
  // Esperado: "Pagando $100 via Paypal" / "Pagando $500 via Tarjeta"
}

// Función auxiliar para el Test 2 (Polimorfismo puro)
void procesarPago(MetodoPago metodo, double monto) {
  metodo.pagar(monto);
}

// --------------------------------------------------------------------------

// EJERCICIO 1: Extends y Super
// 1. Crea una clase base 'Persona' con propiedad 'nombre' y su constructor.
// 2. Crea clase 'Empleado' que extienda de Persona.
//    - Agrega propiedad 'salario' (double).
//    - Constructor: Recibe nombre y salario. Pasa el nombre al padre con 'super'.
//    - Sobreescribe toString para imprimir "Empleado: [nombre] - Sueldo: $[salario]"
class Persona {
  // TU CÓDIGO:
  String nombre;
  Persona(this.nombre);
}

class Empleado extends Persona {
  double salario;
  // TU CÓDIGO (Propiedad, Constructor con super, toString):
  Empleado(String nombre, this.salario) : super(nombre);

  @override
  String toString() => 'Empleado: $nombre - Sueldo: \$$salario' ;
  
}


// EJERCICIO 2: Clases Abstractas
// 1. Crea una clase abstracta 'MetodoPago'.
//    - Define un método abstracto 'pagar(double monto)'.
// 2. Crea la clase 'Paypal' que extienda de MetodoPago.
//    - Implementa pagar: Imprime "Pagando $[monto] via Paypal".
// 3. Crea la clase 'Tarjeta' que extienda de MetodoPago.
//    - Implementa pagar: Imprime "Pagando $[monto] via Tarjeta".

// TU CÓDIGO AQUÍ:

abstract class MetodoPago{
  double pagar(double monto);
}

class Paypal extends MetodoPago{
  @override
  double pagar(double monto) {
    print('Pagando \$$monto via Paypal');
    return monto;
  }
}

class Tarjeta extends MetodoPago{
    @override
  double pagar(double monto) {
    print('Pagando \$$monto via Tarjeta');
    return monto;
  }
}