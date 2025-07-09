import 'dart:io';

void main() {
  print("=== Generador de tablas de multiplicar ===");

  stdout.write("Digite el número para ver su tabla: ");
  int base = int.parse(stdin.readLineSync()!);

  print("\nTabla de multiplicar del $base:");

  for (int factor = 1; factor <= 10; factor++) {
    int producto = base * factor;
    print("$base x $factor = $producto");
  }
}
