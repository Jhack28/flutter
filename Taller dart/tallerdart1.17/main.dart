import 'dart:io';

void main() {
  print("=== Cálculo de Factorial ===");

  stdout.write("Digite un número entre 0 y 12: ");
  int valor = int.parse(stdin.readLineSync()!);

  if (valor < 0) {
    print("No se puede calcular el factorial de un número negativo.");
  } else if (valor > 12) {
    print("El factorial es infinito o demasiado grande para este programa.");
  } else {
    int resultado = 1;
    for (int j = 1; j <= valor; j++) {
      resultado *= j;
    }
    print("El factorial de $valor es: $resultado");
  }
}
