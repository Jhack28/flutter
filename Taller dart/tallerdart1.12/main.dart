import 'dart:math';

void main() {
  print("=== ¡Tira los dados y juega! ===");

  int intentos = 0;
  bool todosPares = true;

  while (intentos < 3 && todosPares) {
    intentos++;

    int dado1 = Random().nextInt(6) + 1;
    int dado2 = Random().nextInt(6) + 1;

    print("Tiro $intentos: Dado 1 = $dado1, Dado 2 = $dado2");

    if (dado1 != dado2) {
      todosPares = false;
      print("¡Lanza de nuevo!");
    } else if (intentos < 3) {
      print("¡Lanzar de nuevo!");
    }
  }

  if (todosPares) {
    print("¡Saca una ficha!");
  }
}
