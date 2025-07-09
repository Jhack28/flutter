import 'dart:io';
import 'dart:math';

void main() {
  print("Seleccione una figura:");
  print("1. Triángulo");
  print("2. Rectángulo");
  print("3. Círculo");

  stdout.write("Opción (1-3): ");
  int opcion = int.parse(stdin.readLineSync()!);

  switch (opcion) {
    case 1:
      print("\n--- Triángulo ---");
      stdout.write("Base: ");
      double base = double.parse(stdin.readLineSync()!);
      stdout.write("Altura: ");
      double altura = double.parse(stdin.readLineSync()!);
      stdout.write("Lado A: ");
      double lado1 = double.parse(stdin.readLineSync()!);
      stdout.write("Lado B: ");
      double lado2 = double.parse(stdin.readLineSync()!);
      stdout.write("Lado C: ");
      double lado3 = double.parse(stdin.readLineSync()!);

      if ([base, altura, lado1, lado2, lado3].any((v) => v <= 0)) {
        print("Error: No se permiten valores menores o iguales a cero.");
      } else {
        double area = (base * altura) / 2;
        double perimetro = lado1 + lado2 + lado3;
        print("Figura: Triángulo");
        print("Área: ${area.toStringAsFixed(2)} unidades²");
        print("Perímetro: ${perimetro.toStringAsFixed(2)} unidades");
      }
      break;

    case 2:
      print("\n--- Rectángulo ---");
      stdout.write("Base: ");
      double base = double.parse(stdin.readLineSync()!);
      stdout.write("Altura: ");
      double altura = double.parse(stdin.readLineSync()!);

      if (base <= 0 || altura <= 0) {
        print("Error: No se permiten valores menores o iguales a cero.");
      } else {
        double area = base * altura;
        double perimetro = 2 * (base + altura);
        print("Figura: Rectángulo");
        print("Área: ${area.toStringAsFixed(2)} unidades²");
        print("Perímetro: ${perimetro.toStringAsFixed(2)} unidades");
      }
      break;

    case 3:
      print("\n--- Círculo ---");
      stdout.write("Radio: ");
      double radio = double.parse(stdin.readLineSync()!);

      if (radio <= 0) {
        print("Error: El radio debe ser mayor a cero.");
      } else {
        double area = pi * pow(radio, 2);
        double perimetro = 2 * pi * radio;
        print("Figura: Círculo");
        print("Área: ${area.toStringAsFixed(2)} unidades²");
        print("Perímetro: ${perimetro.toStringAsFixed(2)} unidades");
      }
      break;

    default:
      print("Opción inválida, vuelva a intentar.");
  }
}
