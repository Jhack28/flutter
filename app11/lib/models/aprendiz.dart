class Aprendiz {
  final int id;
  final String nombre;
  final String descripcion;
  final String ficha;
  final String ingreso;
  final String fotoUrl;
  final String color;

  Aprendiz({
    required this.id,
    required this.nombre,
    required this.descripcion,
    required this.ficha,
    required this.ingreso,
    required this.fotoUrl,
    required this.color,
  });

  factory Aprendiz.fromJson(Map<String, dynamic> json) {
    return Aprendiz(
      id: json['id'],
      nombre: json['nombre'],
      descripcion: json['descripcion'],
      ficha: json['ficha'],
      ingreso: json['ingreso'],
      fotoUrl: json['fotoUrl'],
      color: json['color'],
    );
  }
}
