import 'dart:io';

void main() {
  print("=== Ordenador de tres valores ===");

  stdout.write("Digite el primer valor: ");
  int valor1 = int.parse(stdin.readLineSync()!);

  stdout.write("Digite el segundo valor: ");
  int valor2 = int.parse(stdin.readLineSync()!);

  stdout.write("Digite el tercer valor: ");
  int valor3 = int.parse(stdin.readLineSync()!);

  List<int> lista = [valor1, valor2, valor3];

  stdout.write("¿Desea verlos en orden 'mayor a menor' o 'menor a mayor'?: ");
  String eleccion = stdin.readLineSync()!.toLowerCase();

  if (eleccion.contains("menor")) {
    lista.sort();
    print("Orden ascendente: ${lista.join(', ')}");
  } else if (eleccion.contains("mayor")) {
    lista.sort((a, b) => b.compareTo(a));
    print("Orden descendente: ${lista.join(', ')}");
  } else {
    print("No se reconoció la opción. Escriba 'mayor a menor' o 'menor a mayor'.");
  }
}
