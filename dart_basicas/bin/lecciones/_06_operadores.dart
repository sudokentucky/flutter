void main() {
  print('LECCION 06: OPERADORES');

  //Aritmeticos: division entera (~/)
  double divisionNormal = 10 / 3;
  print('Division normal: $divisionNormal');

  //en js el equivalente seria Math.floor(10/3)
  int divisionEntera = 10 ~/ 3;
  print('Division entera: $divisionEntera');

  //verificar tipos (is, is!)
  //en lugar de typeof
  dynamic dato = 'Hola mundo';
  if (dato is String) {
    print('type check: es un texto de largo ${dato.length}');
  }
  if (dato is! int) {
    //is! significa no es
    print('type check: no es un numero');
  }

  //null aware ?? y ??=
  // en dart ?? solo reacciona a null
  String? nombreServidor; //es null

  //operador ?? (si es null, usa esto)
  String nombreFinal = nombreServidor ?? 'Invitado';
  print('Null Aware (??): $nombreFinal');

  //operador ??= (si la variable es null, se le asigna tal valor, si ya tiene noi hace nada)
  int? numeroVidas; //null
  numeroVidas ??= 3; //al ser null ahora cambia a 3
  //numeroVidas ??=10; //ya no es null, se ignora esta asignacion

  print('Asignacion null aware (??=): $numeroVidas');

  //cascada (..)
  //permite realizar multiples operaciones sobre el mismo objeto

  //Sin cascada
  var lista1 = [];
  lista1.add(1);
  lista1.add(2);
  lista1.add(3);

  //con cascada
  var lista2 = []
    ..add(1)
    ..add(2)
    ..add(3);

  print('4. Cascada: $lista2');
}
