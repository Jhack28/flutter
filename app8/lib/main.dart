import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(Principal());
}
class Principal extends StatelessWidget {
  const Principal({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ficha / 2925960",
      home: HomePrinicipal(),
    );
  }
}
class HomePrinicipal extends StatefulWidget {
  const HomePrinicipal({super.key});
  @override
  State<HomePrinicipal> createState() => _HomePrinicipalState();
}
class _HomePrinicipalState extends State<HomePrinicipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
        title: Text("Ficha / 2925960"),
      ),
      body: ListView.builder(
        itemCount: sitiosTuristicos.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(Icons.flag),
            title: Text(sitiosTuristicos[index]['nombre']),
            subtitle: Text(sitiosTuristicos[index]['telefono']),
          );
        },
      ),
    );
  }
}
List<Map<String, dynamic>> sitiosTuristicos = [
  {
    'nombre': 'Alan',
    'telefono': '+86 10 1234 5678'
  },
  {
    'nombre': 'David',
    'telefono': '+33 1 23 45 67 89'
  },
  {
    'nombre': 'Cristian',
    'telefono': '+34 91 234 56 78'
  },
  {
    'nombre': 'Alejandra',
    'telefono': '+52 55 1234 5678'
  },
  {
    'nombre': 'Brayan',
    'telefono': '+1 202-555-0123'
  },
  {
    'nombre': 'Juan',
    'telefono': '+57 300 123 4567'
  },
  ];