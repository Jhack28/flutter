import 'dart:io';

void main() {
  // Solicitar los dos números
  stdout.write("Ingrese el primer número: ");
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write("Ingrese el segundo número: ");
  int num2 = int.parse(stdin.readLineSync()!);

  // Determinar el menor y el mayor
  int menor = num1 < num2 ? num1 : num2;
  int mayor = num1 > num2 ? num1 : num2;

  // Preguntar al usuario si quiere la serie par o impar
  stdout.write("¿Desea ver la serie par o impar? (Escriba 'par' o 'impar'): ");
  String? eleccion = stdin.readLineSync();

  if (eleccion == null || (eleccion != 'par' && eleccion != 'impar')) {
    print("Opción inválida. Debe escribir 'par' o 'impar'.");
    return;
  }

  print("\nSerie $eleccion entre $menor y $mayor:");

  for (int i = menor; i <= mayor; i++) {
    if (eleccion == 'par' && i % 2 == 0) {
      stdout.write("$i ");
    } else if (eleccion == 'impar' && i % 2 != 0) {
      stdout.write("$i ");
    }
  }
  print(""); // Salto de línea final
}
