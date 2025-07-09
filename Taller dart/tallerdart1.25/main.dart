import 'dart:io';

void main() {
  // Solicitar el tamaño del vector
  stdout.write("¿Cuántos elementos desea ingresar en el vector?: ");
  int x = int.parse(stdin.readLineSync()!);

  List<int> vector = List.filled(x, 0);

  // Llenar el vector
  for (int i = 0; i < x; i++) {
    stdout.write("Ingrese el valor para la posición ${i + 1}: ");
    vector[i] = int.parse(stdin.readLineSync()!);
  }

  // Preguntar el tipo de ordenamiento
  stdout.write("¿Cómo desea ordenar el vector? (A)scendente o (D)escendente: ");
  String? orden = stdin.readLineSync();

  if (orden != null && (orden.toUpperCase() == 'A' || orden.toUpperCase() == 'ASCENDENTE')) {
    vector.sort();
    print("\nVector ordenado en orden ascendente:");
  } else if (orden != null && (orden.toUpperCase() == 'D' || orden.toUpperCase() == 'DESCENDENTE')) {
    vector.sort((a, b) => b.compareTo(a));
    print("\nVector ordenado en orden descendente:");
  } else {
    print("Opción inválida. Mostrando el vector sin ordenar:");
  }

  // Imprimir el vector
  print(vector);
}
