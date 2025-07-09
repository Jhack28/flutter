import 'dart:io';

// 1. Sin parámetros y sin retorno de valor
void sumaSinParametrosSinRetorno() {
  stdout.write("Ingrese el primer número: ");
  int a = int.parse(stdin.readLineSync()!);
  stdout.write("Ingrese el segundo número: ");
  int b = int.parse(stdin.readLineSync()!);
  int suma = a + b;
  print("La suma es: $suma");
}

// 2. Con parámetros y sin retorno de valor
void sumaConParametrosSinRetorno(int a, int b) {
  int suma = a + b;
  print("La suma es: $suma");
}

// 3. Sin parámetros y con retorno de valor
int sumaSinParametrosConRetorno() {
  stdout.write("Ingrese el primer número: ");
  int a = int.parse(stdin.readLineSync()!);
  stdout.write("Ingrese el segundo número: ");
  int b = int.parse(stdin.readLineSync()!);
  return a + b;
}

// 4. Con parámetros y con retorno de valor
int sumaConParametrosConRetorno(int a, int b) {
  return a + b;
}

void main() {
  print("--- MENÚ DE FUNCIONES DE SUMA ---");
  print("1. Sin parámetros y sin retorno de valor");
  print("2. Con parámetros y sin retorno de valor");
  print("3. Sin parámetros y con retorno de valor");
  print("4. Con parámetros y con retorno de valor");
  stdout.write("Seleccione una opción (1-4): ");
  int opcion = int.parse(stdin.readLineSync()!);

  switch (opcion) {
    case 1:
      sumaSinParametrosSinRetorno();
      break;
    case 2:
      stdout.write("Ingrese el primer número: ");
      int a = int.parse(stdin.readLineSync()!);
      stdout.write("Ingrese el segundo número: ");
      int b = int.parse(stdin.readLineSync()!);
      sumaConParametrosSinRetorno(a, b);
      break;
    case 3:
      int resultado = sumaSinParametrosConRetorno();
      print("La suma es: $resultado");
      break;
    case 4:
      stdout.write("Ingrese el primer número: ");
      int a = int.parse(stdin.readLineSync()!);
      stdout.write("Ingrese el segundo número: ");
      int b = int.parse(stdin.readLineSync()!);
      int resultado = sumaConParametrosConRetorno(a, b);
      print("La suma es: $resultado");
      break;
    default:
      print("Opción inválida.");
  }
}
