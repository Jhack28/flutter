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
      title: "Información Personal",
      home: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue[900],
          title: Text("Información Personal"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Image(
                image: NetworkImage("https://t3.ftcdn.net/jpg/05/76/86/76/360_F_576867681_vAf3hUSUxTtp2tRkUKaGn8SfVtaNkuyF.jpg")

              ),
              ListTile(
                title: Text("Juan Esteban"),
                subtitle: Text("Nombres"),
                leading: Icon(Icons.account_circle),
              ),
              Divider(),
              ListTile(
                title: Text("Londoño Carvajal"),
                subtitle: Text("Apellidos"),
                leading: Icon(Icons.account_box),
              ),
              Divider(),
              ListTile(
                title: Text("3505112026"),
                subtitle: Text("Celular"),
                leading: Icon(Icons.phone_android),
              ),
              Divider(),
              ListTile(
                title: Text("DISTRITO CAPITAL"),
                subtitle: Text("Regional"),
                leading: Icon(Icons.home),
              ),
              Divider(),
              ListTile(
                title: Text("CEET"),
                subtitle: Text("Centro de Formación"),
                leading: Icon(Icons.school),
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}