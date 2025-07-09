import 'dart:io';

void main() {
  // Vector de encabezados
  List<String> encabezados = ['Nombre', 'Apellido', 'Edad', 'Estado', 'Teléfono'];

  // Matriz 4x5 para los datos de los compañeros
  List<List<String>> datos = List.generate(4, (_) => List.filled(5, ''));

  // Llenar la matriz con los datos de los compañeros
  for (int i = 0; i < datos.length; i++) {
    print('\nIngrese los datos del compañero ${i + 1}:');
    for (int j = 0; j < encabezados.length; j++) {
      stdout.write('${encabezados[j]}: ');
      datos[i][j] = stdin.readLineSync()!;
    }
  }

  // Mostrar la matriz de forma organizada
  print('\n' + encabezados.join('\t'));
  for (int i = 0; i < datos.length; i++) {
    print(datos[i].join('\t'));
  }
}
