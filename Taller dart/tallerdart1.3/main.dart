import 'dart:io';

void main() {
  stdout.write("Digite el primer numero: ");
  var num1 = int.parse(stdin.readLineSync()!);

  stdout.write("Digite el segundo numero: ");
  var num2 = int.parse(stdin.readLineSync()!);

  var suma = num1 + num2;

  print("el resultado de sumar $num1 con $num2 es: $suma");
}
