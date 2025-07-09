import 'dart:io';
import 'dart:math';

void main() {
  print("--- Cálculo de cilindro con su tapa ---");

  stdout.write("Ingrese el radio (mayor a 0): ");
  double radio = double.parse(stdin.readLineSync()!);

  stdout.write("Ingrese la altura (mayor a 0): ");
  double altura = double.parse(stdin.readLineSync()!);

  if (radio <= 0 || altura <= 0) {
    print("Error: Radio y altura deben ser mayores a 0.");
  } else {
    // Área total (dos bases + lateral)
    double areaTotal = 2 * pi * radio * (radio + altura);
    // Perímetro de la base
    double perimetroBase = 2 * pi * radio;
    // Volumen
    double volumen = pi * pow(radio, 2) * altura;

    print("\n--- Resultados ---");
    print("Figura: Cilindro con tapa");
    print("Área total: ${areaTotal.toStringAsFixed(2)} unidades²");
    print("Perímetro de la base: ${perimetroBase.toStringAsFixed(2)} unidades");
    print("Volumen ocupado: ${volumen.toStringAsFixed(2)} unidades³");
  }
}
