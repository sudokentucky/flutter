void main() {
  // ---------------------------------------------------
  // 1. OBTENER FECHAS
  // ---------------------------------------------------
  
  // "Ahora" (Fecha y hora actual del sistema)
  DateTime ahora = DateTime.now();
  
  // Una fecha específica (Año, Mes, Día, Hora, Minuto...)
  // Ejemplo: Navidad del 2023 a las 8:30 AM
  DateTime navidad = DateTime(2023, 12, 25, 8, 30, 32);
  
  print('Ahora: $ahora');
  print('Navidad: $navidad');

  // ---------------------------------------------------
  // 2. ACCEDER A SUS PARTES
  // ---------------------------------------------------
  // Todo son propiedades (getters)
  print('Año: ${ahora.year}');
  print('Mes: ${ahora.month}');
  print('Día: ${ahora.day}');
  print('Día de la semana: ${ahora.weekday}'); // 1 = Lunes, 7 = Domingo

  // ---------------------------------------------------
  // 3. MATEMÁTICAS CON FECHAS (Duration)
  // ---------------------------------------------------
  // Para sumar o restar, usamos la clase "Duration"
  
  // Calcular fecha de vencimiento (dentro de 7 días)
  DateTime vencimiento = ahora.add(Duration(days: 7));
  
  // Calcular qué fecha fue ayer
  DateTime ayer = ahora.subtract(Duration(days: 1));
  
  print('Vencimiento: $vencimiento');
  print('Ayer fue: $ayer');

  // Diferencia entre dos fechas
  // .difference devuelve un objeto Duration
  Duration tiempoFaltante = navidad.difference(ahora);
  
  // Nota: Si la fecha ya pasó, el resultado será negativo
  print('Días para navidad 2023 (desde hoy): ${tiempoFaltante.inDays}');

  // ---------------------------------------------------
  // 4. COMPARACIONES
  // ---------------------------------------------------
  // Muy útil para lógica de negocio (ej. ¿La oferta sigue válida?)
  
  bool yaPasoNavidad = ahora.isAfter(navidad);
  bool esAntesDeVencer = ahora.isBefore(vencimiento);
  
  print('¿Ya pasó la navidad 2023?: $yaPasoNavidad');

  // ---------------------------------------------------
  // 5. PARSEO (String a DateTime)
  // ---------------------------------------------------
  // Dart entiende nativamente el formato ISO 8601 (yyyy-mm-dd)
  // Es el formato estándar de las Bases de Datos y APIs.
  
  String fechaBaseDeDatos = "2023-05-20 15:00:00Z";
  
  // parse: Lanza error si el formato está mal
  DateTime fechaParseada = DateTime.parse(fechaBaseDeDatos);
  
  // tryParse: Devuelve null si falla (Más seguro)
  DateTime? fechaSegura = DateTime.tryParse("esto-no-es-una-fecha");
  
  print('Fecha recibida de BD: $fechaParseada');
  print('Fecha invalida es null: $fechaSegura'); // null
}