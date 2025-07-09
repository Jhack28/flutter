import 'dart:io';

void main() {
  print("=== Secuencia de Fibonacci ===");

  stdout.write("¿Cuántos términos de la sucesión desea visualizar? ");
  int total = int.parse(stdin.readLineSync()!);

  if (total <= 0) {
    print("Debe ingresar un número mayor que cero.");
    return;
  }

  int primero = 0, segundo = 1;

  print("Los primeros $total números de la sucesión de Fibonacci:");

  for (int contador = 0; contador < total; contador++) {
    stdout.write("$primero");
    if (contador < total - 1) stdout.write(", ");
    int siguiente = primero + segundo;
    primero = segundo;
    segundo = siguiente;
  }

  print(""); // Salto de línea final
}
