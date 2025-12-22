void main() {
  print('LECCION 10: CLASES Y CONSTRUCTORES');

  //instanciacion (crear un objeto)
  //en dart la palabra new es opcional y no es obsoleta pero ya casi no se usa

  //forma posicional
  Persona p1 = Persona('Keneth', 26);
  print('Persona: ${p1.nombre} (${p1.edad})');

  //constructor nombrado
  //dart permite sobrecarga de constructores, si tienen nombres
  //util para valores por defecto
  Persona p2 = Persona.invitado();
  print('2. Invitado: ${p2.nombre} (Edad: ${p2.edad})');

  // Ejemplo real: DateTime.now() es un constructor nombrado.

  //estilo de flutter
  var producto = Producto(
    nombre: 'Laptop Gamer',
    precio: 1500.0,
  );
  
  // producto.precio = 2000; // ERROR: La variable es final, no se puede cambiar.
  print('3. Producto Inmutable: ${producto.descripcion()}');
}

//clases
class Persona {
  //propiedades
  // si no son 'nullable' hay que inicializarlas en el constructor

  String nombre;
  int? edad;

  //constructor, en Java algo comopublic Persona(String nombre) { this.nombre = nombre; }
  //dart esto lo asigna atuomaticamente
  //constructor corto
  Persona(this.nombre, this.edad);

  //constructor nombrado
  //sintaxis: Clase.nombre(): inicializadores;
  Persona.invitado() : nombre = 'Invitado', edad = null;


}

  //clase al estilo de Flutter
  class Producto{
    //'final' significa que una vez creado el objeto los datos no cambian.
    final String nombre;
    final double precio;

    //constructor con parametros nombrados
    //estos se declaran en un cuerpo
    //required obliga a parsear el dato

    Producto({
      required this.nombre,
      required this.precio
    });

    String descripcion() => '$nombre cuenta \$$precio';
  }
