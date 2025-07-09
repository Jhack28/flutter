import 'dart:io';
void main() {
  
  stdout.write("Nombre completo: ");
  String? nombre = stdin.readLineSync();

  stdout.write("Genero: ");
  String? sexo = stdin.readLineSync();

  stdout.write("Edad: ");
  int edad = int.parse(stdin.readLineSync()!);

  stdout.write("¿Cuanto gana? (ej: 2500000.75): ");
  double salario = double.parse(stdin.readLineSync()!);

  stdout.write("¿Tiene al transporte propio? (si/no): ");
  String? tieneTransporteStr = stdin.readLineSync();
  bool tieneTransporte = (tieneTransporteStr?.toLowerCase() == "si");

  stdout.write("¿Que tipo de transporte tiene? (ej: bicicleta, moto, carro): ");
  String? tipoTransporte = stdin.readLineSync();

  print("\n--- DATOS INGRESADOS ---");
  print("Nombre: $nombre");
  print("Genero: $sexo");
  print("Edad: $edad años");
  print("Salario: \$${salario.toStringAsFixed(2)}");
  print("¿Tiene algun transporte propio? ${tieneTransporte ? 'Sí' : 'No'}");
  print("Tipo de transporte: ${tieneTransporte ? tipoTransporte : 'N/A'}");
}
