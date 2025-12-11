
void main(List<String> arguments) {
  //Variables tipadas
  // Enteros (numeros sin decimales)
  int edad = 31;
  
  // Dobles (numeros con decimales)
  double altura = 1.75;
  
  // String (Cadenas de texto, pueden usar comillas simples o dobles)
  String nombre = 'Keneth';
  String apellido = "Lopez";
  
  // Booleanos (Verdadero o Falso)
  bool booleano = true;

  print('--- Tipado  ---');
  print('Nombre: $nombre $apellido'); // Interpolacion de variables con $ y ' o ""
  print('Edad: $edad');
  print('Booleano: $booleano');

  // 2. INFERENCIA DE TIPOS (var)
  // Dart puede inferir o ver el tipo de valor asignado.
  // Una vez asignado, no puede cambiar de tipo.
  
  var pais = 'Guatemala'; // Dart sabe que esto es un String
  // pais = 502; // Marcara error por que inicialmente es un String
  pais = 'México'; 

  // 3. TIPO DYNAMIC 
  // Permite cambiar el tipo de dato en tiempo de ejecucion
  
  dynamic variableLoca = 'Hola';
  print('\n--- Dynamic ---');
  print(variableLoca);
  
  variableLoca = 100; //  porque es dynamic es valido
  print(variableLoca);
  
  variableLoca = true; 
  print(variableLoca);

  // 4. CONSTANTES (final vs const)
  //  cuando el valor no va a cambiar.
  print('\n---final y const---');
  // final: El valor se define en tiempo de ejecucion (ej. momento actual).
  final fechaActual = DateTime.now(); 
  
  // const: El valor debe conocerse antes de compilar (valores y textos fijos).
  const double pi = 3.1416;
  print (fechaActual.toIso8601String());
  print (pi);
  // ---------------------------------------------------
  // 5. NULL SAFETY (Seguridad Nula)
  // ---------------------------------------------------
  // Por defecto, las variables no pueden ser "null"
  // int numeroCelular; // error porque no tiene valor.
  
  // usar el signo de interrogación (?) para decir que PUEDE ser nulo.
  int? numeroOpcional; 
  
  print('\n--- Null Safety ---');
  print(numeroOpcional); // Imprime: null
  
  numeroOpcional = 5550000;
  print(numeroOpcional); // Imprime: 5550000

  //conversiones
  print(50.isEven);
  print(10.5.round());

  // 2. Parsear String a numero
  String precioTexto = '150';
  String pesoTexto = '20.5';
  String textoBasura = 'Hola';

  // usarlo solo si se esta 100% seguro del dato
  int precio = int.parse(precioTexto); 
  double peso = double.parse(pesoTexto);
  
  print('Precio: $precio (Tipo: ${precio.runtimeType})');

  // Método seguro (tryParse): El estándar en Flutter
  // Intentamos convertir "Hola" a número.
  double? resultadoSeguro = double.tryParse(textoBasura); 
  
  print('Resultado del parseo fallido: $resultadoSeguro'); // Imprime: null
  
  //3. Parseo de numero a string
  double saldo = 1500.2567;

  // Convertir a texto simple
  String edadTexto = edad.toString();
  
  // Convertir a texto con formato (Muy usado en Apps para precios)
  // toStringAsFixed(2) recorta a 2 decimales y convierte a texto
  String saldoFormateado = saldo.toStringAsFixed(2);
  
  print('Edad en texto: $edadTexto'); // "31"
  print('Saldo formateado: \$$saldoFormateado');
}