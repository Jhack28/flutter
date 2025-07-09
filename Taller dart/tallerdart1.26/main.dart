import 'dart:io';
import 'dart:math';

void main() {
  final random = Random();

  stdout.write("Ingrese la cantidad de jugadores: ");
  int cantidadJugadores = int.parse(stdin.readLineSync()!);

  int acumulado = 10; // Valor inicial del acumulado

  while (acumulado > 0) {
    print("\nAcumulado actual: \$acumulado");

    for (int jugador = 1; jugador <= cantidadJugadores; jugador++) {
      if (acumulado <= 0) {
        print("El acumulado es 0, el juego termina.");
        break;
      }

      print("\nTurno del jugador \$jugador");

      int tiro1 = random.nextInt(6) + 1; // Tiro inicial (1-6)
      print("Primer tiro: \$tiro1");

      if (tiro1 == 1 || tiro1 == 6) {
        print("Perdió el tiro inicial y debe colocar 1 moneda en el acumulado.");
        acumulado += 1;
      } else {
        // Puede apostar hasta el máximo del acumulado
        int apuesta = 0;
        while (true) {
          stdout.write("Ingrese la cantidad a apostar (máximo \$acumulado): ");
          apuesta = int.parse(stdin.readLineSync()!);
          if (apuesta > 0 && apuesta <= acumulado) {
            break;
          } else {
            print("Apuesta inválida. Intente de nuevo.");
          }
        }

        int tiro2 = random.nextInt(6) + 1; // Segundo tiro
        print("Segundo tiro: \$tiro2");

        if (tiro2 > tiro1) {
          print("Ganó la apuesta y recibe \$apuesta monedas.");
          acumulado -= apuesta;
        } else {
          print("Perdió la apuesta y debe colocar \$apuesta monedas en el acumulado.");
          acumulado += apuesta;
        }
      }

      if (acumulado <= 0) {
        print("\nEl acumulado es 0, el juego termina.");
        break;
      }
    }
  }

  print("\nJuego terminado. El acumulado es 0.");
}
