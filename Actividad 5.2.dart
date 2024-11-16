void main() {
  // Crear el mapa de menú de platillos
  Map<String, double> menuPlatillos = {
    'Pasta': 30.0,
    'Pizza': 50.0,
    'Ensalada': 25.0,
    'Tacos': 15.0,
  };

  // Mostrar todos los datos del menú
  print("Menú de Platillos:");
  mostrarMenu(menuPlatillos);

  // Buscar un platillo
  print("\nBuscando platillo 'Pizza':");
  buscarPlatillo(menuPlatillos, 'Pizza');

  print("\nBuscando platillo 'Hamburguesa':");
  buscarPlatillo(menuPlatillos, 'Hamburguesa');

  // Actualizar precio de un platillo
  print("\nActualizando precio de 'Tacos' a 18.0:");
  actualizarPrecio(menuPlatillos, 'Tacos', 18.0);

  print("\nIntentando actualizar precio de 'Sushi' a 40.0:");
  actualizarPrecio(menuPlatillos, 'Sushi', 40.0);

  // Mostrar el menú actualizado
  print("\nMenú actualizado:");
  mostrarMenu(menuPlatillos);
}

// Función para mostrar todos los datos del menú
void mostrarMenu(Map<String, double> menu) {
  menu.forEach((platillo, precio) {
    print("$platillo: \$${precio.toStringAsFixed(2)}");
  });
}

// Función para buscar un platillo
void buscarPlatillo(Map<String, double> menu, String platillo) {
  if (menu.containsKey(platillo)) {
    print("$platillo encontrado: \$${menu[platillo]!.toStringAsFixed(2)}");
  } else {
    print("El platillo '$platillo' no se encuentra en el menú.");
  }
}

// Función para actualizar el precio de un platillo
void actualizarPrecio(Map<String, double> menu, String platillo, double nuevoPrecio) {
  if (menu.containsKey(platillo)) {
    menu[platillo] = nuevoPrecio;
    print("El precio de '$platillo' se ha actualizado a \$${nuevoPrecio.toStringAsFixed(2)}.");
  } else {
    print("No se pudo actualizar el precio. El platillo '$platillo' no está en el menú.");
  }
}
