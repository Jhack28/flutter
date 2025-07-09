import 'dart:io';

void main() {
  stdout.write("Digite el primer numero: ");
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write("Digite el segundo numero a dividir: ");
  int num2 = int.parse(stdin.readLineSync()!);

  if (num2 == 0) {
    print("Imposible la división por 0.");
  } else {
    double resultado = num1 / num2;
    print("La división del primer numero $num1 entre el segundo numero $num2 es: $resultado");
  }
}
