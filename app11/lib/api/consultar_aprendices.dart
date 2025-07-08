import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/aprendiz.dart';

Future<List<Aprendiz>> consultarAprendices() async {
  final url = Uri.parse('mysql://root:SENA123@localhost:3306/ChronoDB_db');
  final response = await http.get(url);

  if (response.statusCode == 200) {
    final List<dynamic> data = json.decode(response.body);
    return data.map((json) => Aprendiz.fromJson(json)).toList();
  } else {
    throw Exception('Error al cargar aprendices');
  }
}
