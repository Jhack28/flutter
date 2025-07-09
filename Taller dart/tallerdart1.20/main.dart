import 'dart:io';

void main() {
  stdout.write("Ingrese un número entero positivo: ");
  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print("No ingresó ningún número.");
    return;
  }

  // Eliminar posibles espacios y signos negativos para contar solo dígitos
  String numeroStr = input.trim().replaceAll('-', '');

  // Verificar que solo tenga dígitos
  if (!RegExp(r'^\d+$').hasMatch(numeroStr)) {
    print("Entrada inválida. Por favor ingrese un número entero positivo.");
    return;
  }

  int cantidadDigitos = numeroStr.length;

  print("El número $input tiene $cantidadDigitos dígito${cantidadDigitos > 1 ? 's' : ''}.");
}
