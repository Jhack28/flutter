import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(Principal());  
}
class Principal extends StatelessWidget {
  const Principal({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ficha / 2925960",
      debugShowCheckedModeBanner: false,
      home: HomePrincipal(),
    );
  }
}
class HomePrincipal extends StatefulWidget {
  const HomePrincipal({super.key});
  @override
  State<HomePrincipal> createState() => _HomePrincipalState();
}
class _HomePrincipalState extends State<HomePrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
        title: Text("Aprendizes de Flutter"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(          
          itemCount: aprendizes.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                leading: Icon(Icons.star),
                title: Text(aprendizes[index]),
              ),
            );
          },
        ),
      ),      
    );
  }
}
List<String> aprendizes = [
    "Camacho",
    "Alan",
    "David",
    "Brayan",
    "Cristian",
    "Miguel",
    "Juan",
    "Jose",
    "alejandro"
  ];