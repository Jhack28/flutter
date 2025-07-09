import 'dart:io';
import 'dart:math';

void main() {
  print("=== Sorteo de Baloto ===");

  stdout.write("Presiona Enter o escribe algo para recibir tus números de la suerte: ");
  stdin.readLineSync();

  // lista de 1 a 45
  List<int> bolillas = List.generate(45, (i) => i + 1);

  // Mezclar y tomar 6 numeros sin repetir
  bolillas.shuffle(Random());
  List<int> resultado = bolillas.sublist(0, 6)..sort();

  // imprime los numeros no repetidos de resultado
  print("\nTus números seleccionados son:");
  print(resultado.join(' - '));
}
