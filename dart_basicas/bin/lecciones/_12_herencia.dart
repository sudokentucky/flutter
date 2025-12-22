void main() {
  print('--- LECCIÓN 11: HERENCIA Y POLIMORFISMO ---\n');

  // HERENCIA SIMPLE (extends)
  // El perro hereda todo lo que tiene el Animal.
  final perro = Perro('Firulais');
  perro.comer();  // Método del padre (Animal)
  perro.ladrar(); // Método propio

  
  // 2. CLASES ABSTRACTAS (abstract)
  // No se pueden instanciar directamente. Sirven de molde.
  // var forma = Forma(); // ERROR: No puedes crear una forma genérica.
  
  Cuadrado c = Cuadrado(10);
  print('\n2. Área Cuadrado: ${c.calcularArea()}');


  // 3. INTERFACES IMPLÍCITAS (implements)
  //  En Dart NO existe la palabra 'interface'.
  // TODA clase es una interfaz implícita.
  // 'implements' te obliga a reescribir TODOS los métodos.
  
  Pato pato = Pato();
  pato.volar();
  pato.nadar();
}


// ============================================
// 1. HERENCIA (extends)
// ============================================
// "Es un..." (Un perro ES UN animal)

class Animal {
  String nombre;
  Animal(this.nombre);

  void comer() => print('$nombre está comiendo');
}

class Perro extends Animal {
  // SUPER: Llama al constructor del padre.
  // Aquí recibimos el nombre y se lo pasamos a Animal.
  Perro(String nombre) : super(nombre);

  void ladrar() => print('Guau!');
}


// ============================================
// 2. ABSTRACCIÓN (abstract)
// ============================================
// Define QUÉ se debe hacer, pero no CÓMO.

abstract class Forma {
  // Método sin cuerpo (;). Obliga a los hijos a implementarlo.
  double calcularArea(); 
}

class Cuadrado extends Forma {
  double lado;
  Cuadrado(this.lado);

  @override
  double calcularArea() => lado * lado;
}


// ============================================
// 3. INTERFACES (implements)
// ============================================
// "Tiene la capacidad de..." (Un pato TIENE capacidad de volar)
// Permite herencia múltiple de comportamiento.

class Volador {
  void volar() => print('Volando...');
}

class Nadador {
  void nadar() => print('Nadando...');
}

// Un Pato NO extiende de Volador, sino que IMPLEMENTA su contrato.
class Pato implements Volador, Nadador {
  
  @override
  void volar() {
    print('El pato vuela bajo');
  }

  @override
  void nadar() {
    print('El pato nada en el lago');
  }
}