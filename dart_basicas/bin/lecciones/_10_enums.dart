void main() {
  print('--- LECCIÓN 09: ENUMS (Enumeraciones) ---\n');

  // ============================================
  // 1. USO BÁSICO
  // ============================================
  // Definimos un estado específico.
  // Ventaja: Evita errores de dedo (typos) comparado con usar Strings.
  // No es lo mismo 'pendiende' (error) que EstadoPedido.pendiente (seguro).
  
  EstadoPedido estadoActual = EstadoPedido.enCamino;

  print('1. Estado: $estadoActual'); // Imprime: EstadoPedido.enCamino
  print('1. Solo el nombre: ${estadoActual.name}'); // Imprime: enCamino


  // ============================================
  // 2. ENUMS EN SWITCH (La pareja perfecta)
  // ============================================
  // Dart te avisará si olvidas cubrir algún caso del Enum.
  
  switch (estadoActual) {
    case EstadoPedido.pendiente:
      print('2. Switch: Tu pedido se está preparando');
      break;
    case EstadoPedido.enCamino:
      print('2. Switch: ¡Ya va el repartidor!');
      break;
    case EstadoPedido.entregado:
      print('2. Switch: Disfruta tu comida');
      break;
  }


  // ============================================
  // 3. ENUMS AVANZADOS (Enhanced Enums)
  // ============================================
  // ¡Esto es Dart Moderno! Los enums pueden tener propiedades.
  // Mira la definición de 'TipoSuscripcion' abajo del main.
  
  TipoSuscripcion miPlan = TipoSuscripcion.premium;
  
  print('\n3. Enhanced Enum:');
  print('   Plan: ${miPlan.titulo}');
  print('   Precio: \$${miPlan.precio}');
  print('   ¿Es recomendable?: ${miPlan.esRecomendado}');


  // ============================================
  // 4. CONVERTIR DE STRING A ENUM (Útil para APIs)
  // ============================================
  // Imaginemos que la base de datos devuelve el texto "pendiente".
  // .values devuelve la lista de todos los estados.
  // .byName busca el que coincida.
  
  String datoDeApi = 'pendiente';
  var estadoDesdeApi = EstadoPedido.values.byName(datoDeApi);
  
  print('\n4. De String a Enum: $estadoDesdeApi');
}


// ============================================
// DEFINICIÓN DE ENUMS
// ============================================

// 1. Enum Simple (Estilo Clásico)
enum EstadoPedido {
  pendiente,
  enCamino,
  entregado
}

// 2. Enum Avanzado (Con Constructor y Propiedades)
// Muy usado en Flutter para definir temas, tipos de usuarios, etc.
enum TipoSuscripcion {
  // Definimos los casos y pasamos valores al constructor
  free(0.0, 'Plan Gratuito'),
  premium(9.99, 'Plan Pro'),
  vip(19.99, 'Plan Empresarial'); // IMPORTANTE: Punto y coma al final de los casos

  // Propiedades inmutables (final)
  final double precio;
  final String titulo;

  // Constructor constante (debe ser const)
  const TipoSuscripcion(this.precio, this.titulo);

  // También pueden tener Getters o Métodos
  bool get esRecomendado => this == premium;
}