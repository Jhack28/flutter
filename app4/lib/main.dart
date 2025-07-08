import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(Principal());
}
class Principal extends StatelessWidget {
  const Principal({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Datos Personales",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text("Datos Personales"),
        ),
        body: Column(
          children: [
            Text("Aprendiz"),
            Text("Juan Esteban Londono"),
            Icon(Icons.account_circle),
            Icon(Icons.account_balance),
            ElevatedButton(onPressed: (){}, child: Text("Crear")),
            ElevatedButton(onPressed: (){}, child: Text("Editar")),
            ElevatedButton(onPressed: (){}, child: Text("Enviar")),
          ],
        ),
      ),
    );
  }
}