import 'dart:io';

// Estructura de producto
class Producto {
  String id;
  String nombre;
  double precio;
  bool tieneIVA;

  Producto(this.id, this.nombre, this.precio, this.tieneIVA);
}

void main() {
  // Matriz de productos (4 filas x 10 columnas: ID, Nombre, Precio, IVA)
  List<Producto> productos = [
    Producto('P01', 'Arroz', 4000, true),
    Producto('P02', 'Leche', 3500, false),
    Producto('P03', 'Azúcar', 2500, true),
    Producto('P04', 'Huevos', 6000, false),
    Producto('P05', 'Aceite', 8000, true),
    Producto('P06', 'Sal', 1200, false),
    Producto('P07', 'Café', 10000, true),
    Producto('P08', 'Pan', 2000, false),
    Producto('P09', 'Queso', 7000, true),
    Producto('P10', 'Jabón', 1500, true),
  ];

  // Matriz de factura (11 filas x 7 columnas)
  List<List<String>> factura = [];

  int item = 1;
  double totalFactura = 0.0;

  print("--- LISTA DE PRODUCTOS ---");
  print("ID\tNombre\t\tPrecio\tIVA");
  for (var p in productos) {
    print("${p.id}\t${p.nombre.padRight(10)}\t\$${p.precio.toStringAsFixed(2)}\t${p.tieneIVA ? 'Sí' : 'No'}");
  }

  while (item <= 10) {
    // Leer ID de producto con validación
    String? id;
    Producto? prod;
    do {
      stdout.write("\nDigite el ID del producto que desea llevar: ");
      id = stdin.readLineSync();
      if (id == null || id.trim().isEmpty) {
        print("Debe ingresar un ID.");
        continue;
      }
      id = id.toUpperCase();
      prod = productos.where((p) => p.id == id).isNotEmpty
          ? productos.firstWhere((p) => p.id == id)
          : null;
      if (prod == null) {
        print("ID de producto no encontrado. Intente de nuevo.");
      }
    } while (prod == null);

    // Leer cantidad con validación
    int cantidad = 0;
    while (true) {
      stdout.write("¿Cuántas unidades desea llevar de ${prod.nombre}?: ");
      String? cantidadInput = stdin.readLineSync();
      if (cantidadInput == null || cantidadInput.trim().isEmpty) {
        print("Debe ingresar una cantidad.");
        continue;
      }
      try {
        cantidad = int.parse(cantidadInput);
        if (cantidad <= 0) {
          print("La cantidad debe ser mayor a 0.");
          continue;
        }
        break;
      } catch (e) {
        print("Cantidad inválida. Intente de nuevo.");
      }
    }

    double iva = prod.tieneIVA ? prod.precio * cantidad * 0.19 : 0.0;
    double valorTotal = prod.precio * cantidad + iva;

    factura.add([
      item.toString(),
      prod.id,
      prod.nombre,
      cantidad.toString(),
      prod.precio.toStringAsFixed(2),
      iva.toStringAsFixed(2),
      valorTotal.toStringAsFixed(2)
    ]);

    totalFactura += valorTotal;

    // Preguntar si desea otro producto con validación
    String? otro;
    while (true) {
      stdout.write("¿Desea llevar otro producto? (s/n): ");
      otro = stdin.readLineSync();
      if (otro == null || otro.trim().isEmpty) {
        print("Debe responder 's' o 'n'.");
        continue;
      }
      otro = otro.toLowerCase();
      if (otro == 's' || otro == 'n') break;
      print("Respuesta inválida. Debe ser 's' o 'n'.");
    }
    if (otro != 's') break;
    item++;
  }

  // Imprimir factura
  print("\n================= FACTURA =================");
  print("Ítem\tID\tNombre\t\tCant\tV.Unit\tIVA\t\tTotal");
  for (var fila in factura) {
    print("${fila[0]}\t${fila[1]}\t${fila[2].padRight(10)}\t${fila[3]}\t\$${fila[4]}\t\$${fila[5]}\t\$${fila[6]}");
  }
  print("-------------------------------------------");
  print("TOTAL A PAGAR: \$${totalFactura.toStringAsFixed(2)}");
  print("===========================================");
}
