import 'dart:io';
import 'dart:math';

void main() {
  print("=== Identificador de Triángulos ===");
  print("¿Cómo deseas ingresar los datos?");
  print("1. Por ángulos");
  print("2. Por lados");
  stdout.write("Elige una opción (1 o 2): ");
  int opcion = int.parse(stdin.readLineSync()!);

  if (opcion == 1) {
    // Ingreso de ángulos
    double ang1 = pedirValor("Primer ángulo (°): ");
    double ang2 = pedirValor("Segundo ángulo (°): ");
    double ang3 = pedirValor("Tercer ángulo (°): ");

    if ([ang1, ang2, ang3].any((v) => v <= 0)) {
      print("Error: Todos los ángulos deben ser mayores a cero.");
    } else if ((ang1 + ang2 + ang3).toStringAsFixed(2) != "180.00") {
      print("Error: La suma de los ángulos debe ser 180°.");
    } else {
      if ([ang1, ang2, ang3].contains(90)) {
        print("Tipo de triángulo según ángulos: Rectángulo.");
      } else if ([ang1, ang2, ang3].any((v) => v > 90)) {
        print("Tipo de triángulo según ángulos: Obtusángulo.");
      } else {
        print("Tipo de triángulo según ángulos: Acutángulo.");
      }
    }
  } else if (opcion == 2) {
    // Ingreso de lados
    double ladoA = pedirValor("Longitud del primer lado: ");
    double ladoB = pedirValor("Longitud del segundo lado: ");
    double ladoC = pedirValor("Longitud del tercer lado: ");

    List<double> lados = [ladoA, ladoB, ladoC]..sort();
    double menor = lados[0], medio = lados[1], mayor = lados[2];

    if ([menor, medio, mayor].any((v) => v <= 0)) {
      print("Error: Todos los lados deben ser mayores a cero.");
    } else if (menor + medio <= mayor) {
      print("Error: Los lados no forman un triángulo válido.");
    } else {
      // Clasificación por lados
      String tipoLados;
      if (ladoA == ladoB && ladoB == ladoC) {
        tipoLados = "Equilátero";
      } else if (ladoA == ladoB || ladoA == ladoC || ladoB == ladoC) {
        tipoLados = "Isósceles";
      } else {
        tipoLados = "Escaleno";
      }

      // Clasificación por ángulos usando el teorema de Pitágoras
      String tipoAngulo;
      double sumaCuadrados = pow(menor, 2).toDouble() + pow(medio, 2).toDouble();
      double cuadradoMax = pow(mayor, 2).toDouble();

      if ((cuadradoMax - sumaCuadrados).abs() < 1e-3) {
        tipoAngulo = "Rectángulo";
      } else if (cuadradoMax < sumaCuadrados) {
        tipoAngulo = "Acutángulo";
      } else {
        tipoAngulo = "Obtusángulo";
      }

      print("Triángulo $tipoLados y $tipoAngulo.");
    }
  } else {
    print("Opción inválida. Reinicia el programa e intenta de nuevo.");
  }
}

double pedirValor(String mensaje) {
  stdout.write(mensaje);
  return double.parse(stdin.readLineSync()!);
}
