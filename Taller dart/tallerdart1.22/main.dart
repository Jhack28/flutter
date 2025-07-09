import 'dart:io';

void main() {
  List<int> vector = List.filled(10, 0);

  // Llenar el vector con valores ingresados por el usuario
  for (int i = 0; i < vector.length; i++) {
    stdout.write("Ingrese el valor para la posición ${i + 1}: ");
    vector[i] = int.parse(stdin.readLineSync()!);
  }

  print("\nContenido del vector:");
  for (int i = 0; i < vector.length; i++) {
    print("Índice: $i | Posición: ${i + 1} | Valor: ${vector[i]}");
  }
}
