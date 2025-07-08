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
      title: "FICHA 2925960",
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
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: Text("FICHA 2925960"),
      ),
      body: ListView.builder(
        itemCount: aprendices.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            trailing: Icon(Icons.arrow_circle_right_outlined),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(aprendices[index]["foto_monumento"]),
            ),
            title: Text(aprendices[index]["nombre"]),
            subtitle: Text(
              // ignore: prefer_interpolation_to_compose_strings
              aprendices[index]["ubicacion"] + " " + aprendices[index]["fecha_lanzamiento"]
            ),
            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return Scaffold(
                    appBar: AppBar(
                      backgroundColor: aprendices[index]["color_distintivo"],
                      title: Text(aprendices[index]["nombre"]),
                    ),
                    body: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ListView(
                        children: [
                          CircleAvatar(
                            radius: 100,
                            backgroundImage: NetworkImage(
                              aprendices[index]["foto_monumento"]
                            ),
                          ),
                          Text(aprendices[index]["descripcion"]),
                          Divider(),
                          Text(aprendices[index]["ubicacion"]),
                          Divider(),
                          Text(aprendices[index]["fecha_lanzamiento"]),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}

List<Map<String, dynamic>> aprendices = [
  {
    'nombre': 'Alejandra',
    'descripcion': 'Aprendiz de análisis y desarrollo de software.',
    'ubicacion': 'Ficha 2925960',
    'fecha_lanzamiento': 'Ingreso: 2024',
    'color_distintivo': Colors.purple,
    'foto_monumento': 'https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=facearea&w=256&q=80'
  },
  {
    'nombre': 'Daniel',
    'descripcion': 'Aprendiz de análisis y desarrollo de software.',
    'ubicacion': 'Ficha 2925960',
    'fecha_lanzamiento': 'Ingreso: 2024',
    'color_distintivo': Colors.blue,
    'foto_monumento': 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=facearea&w=256&q=80'
  },
  {
    'nombre': 'Brayan',
    'descripcion': 'Aprendiz de análisis y desarrollo de software.',
    'ubicacion': 'Ficha 2925960',
    'fecha_lanzamiento': 'Ingreso: 2024',
    'color_distintivo': Colors.green,
    'foto_monumento': 'https://images.unsplash.com/photo-1463453091185-61582044d556?auto=format&fit=facearea&w=256&q=80'
  },
  {
    'nombre': 'David',
    'descripcion': 'Aprendiz de análisis y desarrollo de software.',
    'ubicacion': 'Ficha 2925960',
    'fecha_lanzamiento': 'Ingreso: 2024',
    'color_distintivo': Colors.orange,
    'foto_monumento': 'https://images.unsplash.com/photo-1531123897727-8f129e1688ce?auto=format&fit=facearea&w=256&q=80'
  },
  {
    'nombre': 'Camilo',
    'descripcion': 'Aprendiz de análisis y desarrollo de software.',
    'ubicacion': 'Ficha 2925960',
    'fecha_lanzamiento': 'Ingreso: 2024',
    'color_distintivo': Colors.red,
    'foto_monumento': 'https://images.unsplash.com/photo-1508213929835-9f6e0b6a3f0a?auto=format&fit=facearea&w=256&q=80'
  },
  {
    'nombre': 'Cristian',
    'descripcion': 'Aprendiz de análisis y desarrollo de software.',
    'ubicacion': 'Ficha 2925960',
    'fecha_lanzamiento': 'Ingreso: 2024',
    'color_distintivo': Colors.teal,
    'foto_monumento': 'https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=facearea&w=256&q=80'
  },
  {
    'nombre': 'Ronny',
    'descripcion': 'Aprendiz de análisis y desarrollo de software.',
    'ubicacion': 'Ficha 2925960',
    'fecha_lanzamiento': 'Ingreso: 2024',
    'color_distintivo': Colors.brown,
    'foto_monumento': 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=facearea&w=256&q=80'
  }
];
