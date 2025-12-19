void main() {
  print('LECCION 7: LISTAS (ARRAYS)');
  //declaracion y generics (con tipado estricto)
  // en js: let numeros = [1, "dos", true];
  //dart se define que contiene la lista con el diamante <>

  List<int> numeros = [1, 2, 3, 4, 5];
  //numero.add('holal'); da error ya que solo acepta enteros

  //inferencia se puede usar sin un tipado estricto, dart infiere los tipos
  var amigos = ['Daniel', 'Rachel', 'Rose']; // dart inifiere List<String>
  print('Lista simple: $amigos');
  print('Primer elemento: ${amigos[0]}');
  print('Ultimo elemento: ${amigos.last}');

  //metodos basicos
  var frutas = <String>['Manzana', 'Pera']; //otra forma de declaracion

  //agregar en js es push
  frutas.add('Uva');
  print('Frutas: $frutas');

  //agregar varios (en js concat o / spread ...)
  frutas.addAll(['Mango', 'Fresa']);
  print('Frutas: $frutas');

  //eliminar
  frutas.remove('Pera'); //por valor o key
  print('Frutas: $frutas');
  frutas.removeAt(0); // por indice
  print('Frutas: $frutas');

  //collection if
  //permite agregar elementos condicionalmente dentro de la definicion de lista
  //esto evita tener que hacer .add() fuera con if/else

  bool esAdmin = true;
  bool mostrarAjustes = false;

  final menuLaterial = [
    'Inicio',
    'Perfil',
    if (esAdmin) 'Panel de Amdin', // solo se agrega si esAdmin true
    if (mostrarAjustes) 'Configuracion' else 'Ayuda',
  ];

  print('Menu dinamico: $menuLaterial');

  //collection for
  //permite transformar una lista dentro de otra
  // muy util para generar listas de widgets basadas en datos

  var numerosBase = [1, 2, 3];

  var listaDuplicada = [
    'Inicio',
    for (var n in numerosBase) 'Numero ${n * 2}',
    'Fin',
  ];

  print('Collection for: $listaDuplicada');

  //operador spread (...)
  //igual que en js sirve para esparcir elementos de una lista en otra

  var masNumeros = [100, 200];
  var todosLosNumeros = [...numeros, ...masNumeros];

  print('Spread: $todosLosNumeros');
}
