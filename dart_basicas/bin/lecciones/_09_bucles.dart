void main(){
  print('LECCION 09: BUCLES Y CONTROL DE FLUJO');

  List<String> nombres = ['Keneth', 'Daniel', 'Ana', 'Pedro'];
  
  //for clasico con indice
  // usualmente se cuando se sabe el rango maximo o hasta donde llegar
  print('For clasico: ');
  //en un for siempre (declaracion; condicion; incremento/decremento)
  for(int i = 0; i < nombres.length; i++){
    print('Index $i: ${nombres[i]}');
  }

  //for in 
  // esto es equivalente al for of de JS
  // recorre elementos directamente

  print('\n For in: ');
  for(var nombre in nombres){
    print('Nombre: $nombre');
  }

  //while y do while
  //while, pregunta primera y mientras, hasta que no se cumpla
  // do-while actua primero y luego pregunta, ejecutara al menos 1 vez
  // ususalmente se usan estos bucles donde no se sabe hasta donde llegar, usualmente lo guia una condicion
  // aunque en muchos casos ambos bucles pueden cumplir 
  print('\n While:');
  int cuenta = 3;
  while (cuenta > 3){
    print('Cuenta atras: $cuenta');
    cuenta --;
  }

  //break y continue
  print('\n Break y Continue:');

  for (var i = 0; i < 10; i++) {
    // CONTINUE: Salta esta iteración y va a la siguiente.
    if (i % 2 == 0) {
      continue; // Si es par, ignoramos el resto del código y volvemos arriba.
    }
    
    // BREAK: Rompe el bucle por completo.
    if (i > 5) {
      print('   -> Break activado en $i (Saliendo del bucle)');
      break; 
    }
    
    print('   Numero impar: $i');
  }

  print('\n5. Return:');
  buscarUsuario('Ana', nombres);
  buscarUsuario('Xavier', nombres);

}

//  funcion para demostrar 'return'
void buscarUsuario(String objetivo, List<String> lista) {
  for (var usuario in lista) {
    if (usuario == objetivo) {
      print('  Encontrado: $usuario (El return mata la función aquí)');
      return; // Cierra la función INMEDIATAMENTE. No sigue buscando.
    }
  }
  // Si el bucle termina y no se ejecuto el return de arriba:
  print('   El usuario $objetivo no existe');
}