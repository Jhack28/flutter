import 'dart:io';
import 'dart:math';

void main() {
  while (true) {
    print('\n--- MENÚ DE OPERACIONES MATEMÁTICAS ---');
    print('1. Suma');
    print('2. Resta');
    print('3. Multiplicación');
    print('4. División');
    print('5. Módulo');
    print('6. Cuadrado');
    print('7. Raíz cuadrada');
    print('8. Potencia');
    print('9. Porcentaje');
    print('10. Número aleatorio');
    print('0. Salir');
    stdout.write('Seleccione una opción: ');
    int opcion = int.tryParse(stdin.readLineSync() ?? '') ?? -1;

    if (opcion == 0) {
      print('¡Hasta luego!');
      break;
    }

    double num1, num2, resultado;
    switch (opcion) {
      case 1: // Suma
        num1 = pedirNumero('Ingrese el primer número: ');
        num2 = pedirNumero('Ingrese el segundo número: ');
        resultado = num1 + num2;
        print('Resultado: $resultado');
        break;
      case 2: // Resta
        num1 = pedirNumero('Ingrese el primer número: ');
        num2 = pedirNumero('Ingrese el segundo número: ');
        resultado = num1 - num2;
        print('Resultado: $resultado');
        break;
      case 3: // Multiplicación
        num1 = pedirNumero('Ingrese el primer número: ');
        num2 = pedirNumero('Ingrese el segundo número: ');
        resultado = num1 * num2;
        print('Resultado: $resultado');
        break;
      case 4: // División
        num1 = pedirNumero('Ingrese el dividendo: ');
        num2 = pedirNumero('Ingrese el divisor: ');
        if (num2 == 0) {
          print('Error: No se puede dividir por cero.');
        } else {
          resultado = num1 / num2;
          print('Resultado: $resultado');
        }
        break;
      case 5: // Módulo
        num1 = pedirNumero('Ingrese el primer número: ');
        num2 = pedirNumero('Ingrese el segundo número: ');
        if (num2 == 0) {
          print('Error: No se puede calcular el módulo con divisor cero.');
        } else {
          resultado = num1 % num2;
          print('Resultado: $resultado');
        }
        break;
      case 6: // Cuadrado
        num1 = pedirNumero('Ingrese el número: ');
        resultado = pow(num1, 2).toDouble();
        print('El cuadrado de $num1 es $resultado');
        break;
      case 7: // Raíz cuadrada
        num1 = pedirNumero('Ingrese el número: ');
        if (num1 < 0) {
          print('Error: No se puede calcular la raíz cuadrada de un número negativo.');
        } else {
          resultado = sqrt(num1);
          print('La raíz cuadrada de $num1 es $resultado');
        }
        break;
      case 8: // Potencia
        num1 = pedirNumero('Ingrese la base: ');
        num2 = pedirNumero('Ingrese el exponente: ');
        resultado = pow(num1, num2).toDouble();
        print('$num1 elevado a la $num2 es $resultado');
        break;
      case 9: // Porcentaje
        num1 = pedirNumero('Ingrese el número: ');
        num2 = pedirNumero('¿Qué porcentaje desea calcular?: ');
        resultado = num1 * (num2 / 100);
        print('$num2% de $num1 es $resultado');
        break;
      case 10: // Número aleatorio
        num1 = pedirNumero('Ingrese el límite inferior: ');
        num2 = pedirNumero('Ingrese el límite superior: ');
        if (num2 <= num1) {
          print('Error: El límite superior debe ser mayor que el inferior.');
        } else {
          int aleatorio = num1.toInt() + Random().nextInt(num2.toInt() - num1.toInt() + 1);
          print('Número aleatorio entre ${num1.toInt()} y ${num2.toInt()}: $aleatorio');
        }
        break;
      default:
        print('Opción inválida. Intente de nuevo.');
    }
  }
}

double pedirNumero(String mensaje) {
  stdout.write(mensaje);
  return double.tryParse(stdin.readLineSync() ?? '') ?? 0;
}
