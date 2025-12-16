void main(){
  //object
  int age = 20;
  dynamic myVar = 100;
  print(myVar.runtimeType);
  myVar = '';
  print(myVar.runtimeType);
  print(age.runtimeType);
  print(age.hashCode);

  //interpolacion strings
  var name = 'Keneth';
  var lastName = 'Lopez';
  var username = name + lastName + 100.toString();
  print(username);
  var usernameInterpolation = '$name$lastName$age';
  print(usernameInterpolation);
  var usernameAccess = '${name[0]}${lastName[0]}$age${name.length}';
  print(usernameAccess);

  //variables inmutables
  var price = 1000.0;
  final coupon = 0.5;
  price = price - price * coupon;
  const iva = 0.12;
  final taxes = price * iva;
  var total = price + taxes;
  print('price: $price');
  print('iva: $iva');
  print('total: $total');

  const a = 40;
  const b = 10;
  const c = 'keneth';
  const suma = '$a$b$c';
  print(suma);
  printMessage('parametro pasado para imprimir');
}

void printMessage(String text){
  print(text);
}