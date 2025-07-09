import 'dart:io';

void main() {
  stdout.write("Digite el primer numero: ");
  var num1 = int.parse(stdin.readLineSync()!);

  stdout.write("Digite el segundo numero a multiplicar : ");
  var num2 = int.parse(stdin.readLineSync()!);

  var resultado = num1 * num2;

  print("El producto de la multiplicacion $num1 X $num2 es: $resultado");
}
