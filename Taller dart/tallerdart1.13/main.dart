import 'dart:io';

void main() {
  print("=== Bienvenido a la tienda ===");

  stdout.write("Ingrese el nombre del producto: ");
  String producto = stdin.readLineSync()!;

  stdout.write("Digite el precio por unidad: ");
  double precioUnitario = double.parse(stdin.readLineSync()!);

  stdout.write("¿Cuántas unidades va a comprar?: ");
  int unidades = int.parse(stdin.readLineSync()!);

  stdout.write("¿Hace parte de la canasta familiar? (si/no): ");
  String canasta = stdin.readLineSync()!.trim().toLowerCase();

  double subtotal = precioUnitario * unidades;
  double totalPagar;

  if (canasta == 'si') {
    totalPagar = subtotal;
    print("Este producto está exento de IVA por pertenecer a la canasta familiar.");
  } else if (canasta == 'no') {
    totalPagar = subtotal * 1.19;
    print("Este producto tiene IVA (19%).");
  } else {
    print("Opción no reconocida. Se asume que el producto no tiene IVA.");
    totalPagar = subtotal;
  }

  print("El valor total a pagar por $producto es: \$${totalPagar.toStringAsFixed(2)}");
}
