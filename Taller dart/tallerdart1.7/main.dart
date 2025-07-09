import 'dart:io';

void main() {
  print("Colores:");
  print("1. Amarillo");
  print("2. Azul");
  print("3. Rojo");

  stdout.write("Digite el numero del primer color: ");
  int color1 = int.parse(stdin.readLineSync()!);

  stdout.write("Digite el numero del segundo color: ");
  int color2 = int.parse(stdin.readLineSync()!);

  String resultado;

  if ((color1 == 1 && color2 == 2) || (color1 == 2 && color2 == 1)) {
    resultado = "Verde";
  } else if ((color1 == 1 && color2 == 3) || (color1 == 3 && color2 == 1)) {
    resultado = "Naranja";
  } else if ((color1 == 2 && color2 == 3) || (color1 == 3 && color2 == 2)) {
    resultado = "Violeta";
  } else if (color1 == color2 && (color1 >= 1 && color1 <= 3)) {
    resultado = "No existe una combinacion, debido a que eligió el mismo color.";
  } else {
    resultado = "Combinación inválida (números fuera del menú).";
  }

  print("Su combinacion es: $resultado");
}
