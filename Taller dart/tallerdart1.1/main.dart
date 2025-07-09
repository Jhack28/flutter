void main() {
  const String nombre = "Juan Esteban Lodnoño Carvajal";
  const String sexo = "Masculino";
  const int edad = 23;
  const double salario = 20000000.00;
  const bool tieneVehiculo = true;
  const String tipovehiculo = "BMX";

  print("Nombre: $nombre");
  print("Sexo: $sexo");
  print("Edad: $edad años");
  print("Salario: \$${salario.toStringAsFixed(2)}");
  // ignore: dead_code
  print("Tiene vehículo? ${tieneVehiculo ? 'Sí' : 'No'}");
  print("Tipo de vehículo: $tipovehiculo");
}
