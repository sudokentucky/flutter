// ==========================================
// EJERCICIOS: BUCLES Y CONTROL DE FLUJO
// ==========================================

void main() {
  print('--- COMPROBACIÓN DE RESULTADOS ---\n');

  // Test 1: Suma
  print('1. Suma Total: ${sumarLista([10, 20, 30])}'); 
  // Esperado: 60

  // Test 2: Break (Búsqueda)
  print('2. Buscar 50: Indice ${buscarIndice([10, 50, 30], 50)}'); 
  // Esperado: 1
  print('2. Buscar 99: Indice ${buscarIndice([10, 50, 30], 99)}'); 
  // Esperado: -1

  // Test 3: Continue (Filtrado manual)
  print('3. Sin "Error": ${ignorarErrores(['Ok', 'Error', 'Ok', 'Bug'])}'); 
  // Esperado: [Ok, Ok, Bug]

  // Test 4: While (Contador de dígitos)
  print('4. Dígitos de 12345: ${contarDigitos(12345)}'); // Esperado: 5
  print('4. Dígitos de 7:     ${contarDigitos(7)}');     // Esperado: 1
}

// --------------------------------------------------------------------------

// EJERCICIO 1: For-In (Acumulador)
// Recibe una lista de enteros.
// Retorna la suma total de todos los números.
// REQUISITO: Usar for-in.
int sumarLista(List<int> numeros) {
  // TU CÓDIGO AQUÍ:
  int suma = 0;
  for(var numero in numeros){
    suma += numero;
  }
  return suma;
}


// EJERCICIO 2: Break y Return
// Recibe una lista y un número a buscar.
// Retorna el ÍNDICE (posición) donde se encuentra el número.
// Si no lo encuentra, retorna -1.
// REQUISITO: Usar un bucle 'for' clásico (con índice i).
// Pista: Si lo encuentras, usa 'return i' inmediatamente.
int buscarIndice(List<int> lista, int objetivo) {
  // TU CÓDIGO AQUÍ:
  for(int i = 0; i < lista.length; i++){
    if(lista[i] == objetivo){
      return i;
    }
  }
  return -1;
}


// EJERCICIO 3: Continue
// Recibe una lista de strings (logs del sistema).
// Retorna una nueva lista que excluya la palabra "Error".
// REQUISITO: Usar un bucle for-in y la palabra clave 'continue'.
// (Sí, sé que con .where saldría más rápido, pero practica el continue aquí).
List<String> ignorarErrores(List<String> logs) {
  List<String> limpios = [];
  
  // TU CÓDIGO AQUÍ:
  // Si el log es 'Error' -> continue
  // Si no, agregalo a la lista 'limpios'
  for(var log in logs){
    if(log == 'Error'){
      continue;
    }else{
      limpios.add(log);
    }
  }
  return limpios;
}


// EJERCICIO 4: While (Matemáticas)
// Recibe un número entero positivo (ej: 450).
// Cuenta cuántos dígitos tiene dividiéndolo entre 10 sucesivamente.
// Ejemplo: 450 / 10 = 45 (1 digito) -> 45 / 10 = 4 (2 digitos) -> 4 / 10 = 0 (3 digitos).
// Retorna la cantidad de dígitos.
int contarDigitos(int numero) {
  int contador = 0;
  // TU CÓDIGO AQUÍ (While numero > 0):
  // Tip: Usa division entera ~/
  // Caso borde: Si el numero es 0, tiene 1 digito.
  if (numero == 0) return 1;

  while(numero > 0){
    numero = numero ~/ 10;
    contador ++;
  }

  return contador;
}