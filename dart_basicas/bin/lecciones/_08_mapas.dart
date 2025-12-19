void main(){
  print('LECCION 08: MAPAS (Diccionarios o JSON)');
  //declaracion (clave: valor)
  // el equivalente en js: const persona = {nombre: 'Keneth', edad: 26};
  // Dart: Map<TipoClave, TipoValor>

  Map<String, int> edades = {
    'Keneth': 26,
    'Daniel': 26,
    // 'Ana' : 'Veinte' //Error ya que el valor debe de ser un entero
  };

  print('Mapa tipado: $edades');

  //un json real o una respuesta de un servidor puede tener tipos mezclados
  //se puede usar facilmente un dynamic para el valor 
  //se considera un estandar de flutter: Map<String, dynamic>

  Map<String, dynamic> producto ={
    'nombre' : 'Laptop Gamer',
    'precio' : 1500.00,
    'esNuevo': true,
    'tags' : ['tecnologia', 'oferta'] //lista dentro de un mapa
  };

  print('Ejemplo de un JSON con Map: $producto');

  //metodos de acceso y modificacion
  // para acceder a una clave no se usa . si no ['key']

  //lectura
  print('Nombre: ${producto['nombre']}');

  //escribir, tambien para actualizar un valor
  producto['precio'] = 1200.00;

  //agregar nueva key
  producto ['stock'] = 10;

  print('Producto luego de la actualizacon: $producto');

  //metodos adicionales y null safety
  // .keys y .values
  print('Claves; ${producto.keys}'); //keys es iterable

  //contain keys
  if(producto.containsKey('descuento')){
  print('Tiene descuento: ${producto['descuento']}');
  }else{
    print('No tiene descuento');
  } 

  //si se accede a una clave que no existe devolvera un nulo 
  // print(producto['color'].toUpperCase()) // esto es un error, nulo no tiene uppercase
  print('Color: ${producto['color'] ?? 'No especificado'}');

  //put if abstent, es como hacer un if usando containKeys y luego asignar con callback
  producto.putIfAbsent('descuento', () => 0.50);

  print(producto);

  //add all
  // sirve para unir dos objetos. 
  //Si las claves se repiten, el mapa que agregas va a sobreescribir al original.
  
  Map<String, dynamic> datosBasicos = {
    'nombre': 'Keneth', 
    'rol': 'User'
  };
  
  Map<String, dynamic> datosActualizados = {
    'rol': 'Admin', // Clave repetida (esta quedara)
    'activo': true  // Clave nueva
  };
  
  // Fusionamos 'datosActualizados' en 'datosBasicos'
  datosBasicos.addAll(datosActualizados);
  
  print('6. Mapa Fusionado: $datosBasicos'); 
  // Resultado: {nombre: Keneth, rol: Admin, activo: true}


  //json anidado un mapa dentro de un mapa (s)
  // esto seria una respuesta real de una API:
  Map<String, dynamic> perfil = {
    'id': 100,
    'contacto': {
      'email': 'keneth@dev.com',
      'direccion': {
        'ciudad': 'Guatemala',
        'zona': 10
      }
    }
  };

  // --- FORMA 1: Acceso Directo (Peligroso) ---
  // Funciona si estás 100% seguro de que todo existe.
  // Dart permite encadenar corchetes porque son 'dynamic'.
  String ciudad = perfil['contacto']['direccion']['ciudad'];
  print('7. Ciudad (Directo): $ciudad');


  // --- FORMA 2: Acceso Seguro (Recomendado) ---
  // ¿Qué pasa si 'direccion' viene nulo? La forma 1 explotaría (Crash).
  // Usamos el operador '?.' para acceder solo si lo anterior existe.
  
  // Imaginemos un mapa incompleto:
  Map<String, dynamic> perfilIncompleto = {
    'id': 200,
    'contacto': null // No hay datos de contacto
  };

  // var calle = perfilIncompleto['contacto']['direccion']; // ESTO DARÍA ERROR FATAL
  
  // Solución: ?. (Null Aware Access)
  // "Intenta entrar a contacto, si existe, intenta entrar a direccion..."
  var calleSegura = perfilIncompleto['contacto']?['direccion'];
  
  print('7. Acceso Seguro (Null): $calleSegura'); // Imprime null (no explota)


}