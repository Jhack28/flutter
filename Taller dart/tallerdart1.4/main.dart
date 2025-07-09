import 'dart:io';

void main() {
  stdout.write("Digite el primer numero: ");
  var num1 = int.parse(stdin.readLineSync()!);

  stdout.write("Digite el segundo numero: ");
  var num2 = int.parse(stdin.readLineSync()!);

 var resta = num1 - num2;

  print("Al restarle $num1 a $num2 es: $resta");
}
