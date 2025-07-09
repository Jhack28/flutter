void main() {
  print("=== Tablas de multiplicar del 1 al 10 ===\n");

  for (int base = 1; base <= 10; base++) {
    print("Multiplicaciones para el número $base:");
    for (int multiplicador = 1; multiplicador <= 10; multiplicador++) {
      int producto = base * multiplicador;
      print("$base x $multiplicador = $producto");
    }
    print(""); // Espacio entre tablas
  }
}
