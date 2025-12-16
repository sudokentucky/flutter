void main() {
  print('LECCION 05: FUNCIIONES, PARAMETROS Y GETTERS Y SETTERS');

  //llamar a una funcion basica
  saludar();

  //funcion con retorno (tipo de dato)
  int resultado = sumar(10, 5);
  print('suma: $resultado');

  //argumentos nombrados (Named Parameters)
  //permite llamar a los argumentos por su nombre, el orden no importa
  // se debe definir con llaves en la funcion
  crearUsuario(nombre: 'Keneth', edad: 26);
  crearUsuario(edad: 30, nombre: 'Jose');
  crearUsuario(nombre: 'Sin edad');

  //Argumentos opcionales
  mostrarMensaje('Hola', 'Mundo');
  mostrarMensaje('Hola');

  //arrow function, para funciones de una sola linea
  print('ArrowFunction: ${restar(10, 2)}');

  //getters y setters
  Cuadrado miCuadrado = Cuadrado();
  miCuadrado.lado = 5.0;
  print('getter area: ${miCuadrado.area}');
}

//definicion de una funcion basica, sin retorno
void saludar() {
  print('esta es una funcion sin retorno void');
}

int sumar(int a, int b) {
  return a + b;
}

//parametros nombrados ({}) + required
//required va a obligar a enviar el dato
//int?: permite que sea nulo si no se envia (se puede usar valores por defecto)
void crearUsuario({required String nombre, int? edad}) {
  print('Usuario creado: $nombre, Edad: ${edad ?? "No especificado"}');
}

// opcionales (posicionales) []
void mostrarMensaje(String m1, [String m2 = '']) {
  print('Mensaje: $m1 $m2');
}

// arrow function (=>)
// equivale a hacer {return a-b;}
int restar(int a, int b) => a - b;

//clase ejemplo para getters y setters
class Cuadrado {
  double _lado = 0; // el guion bajo significa que la variable es privada

  //setter
  set lado(double valor) {
    if (valor < 0) throw 'El lado no puede ser negativo';
    _lado = valor;
    print('Valor del lado $_lado');
  }

  //getter
  double get area {
    return _lado * _lado;
  }
}
