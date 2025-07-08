import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Principal());
}

// Controladores para el formulario
final txtNombre = TextEditingController();
final txtDescripcion = TextEditingController();
final txtFechaLanz = TextEditingController();
final txtUbicacion = TextEditingController();
final txtFotografia = TextEditingController();

class Principal extends StatelessWidget {
  const Principal({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FICHA 2926960",
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
  // Lista de aprendices
  List<Map<String, dynamic>> aprendices = [
    {
      'nombre': 'Alejandra',
      'descripcion': 'Aprendiz de análisis y desarrollo de software.',
      'ubicacion': 'Ficha 2926960',
      'fecha_lanzamiento': 'Ingreso: 2024',
      'color_distintivo': Colors.purple,
      'foto_monumento': 'https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=facearea&w=256&q=80'
    },
    {
      'nombre': 'Daniel',
      'descripcion': 'Aprendiz de análisis y desarrollo de software.',
      'ubicacion': 'Ficha 2926960',
      'fecha_lanzamiento': 'Ingreso: 2024',
      'color_distintivo': Colors.blue,
      'foto_monumento': 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=facearea&w=256&q=80'
    },
    {
      'nombre': 'Brayan',
      'descripcion': 'Aprendiz de análisis y desarrollo de software.',
      'ubicacion': 'Ficha 2926960',
      'fecha_lanzamiento': 'Ingreso: 2024',
      'color_distintivo': Colors.green,
      'foto_monumento': 'https://images.unsplash.com/photo-1463453091185-61582044d556?auto=format&fit=facearea&w=256&q=80'
    },
    {
      'nombre': 'Davi',
      'descripcion': 'Aprendiz de análisis y desarrollo de software.',
      'ubicacion': 'Ficha 2926960',
      'fecha_lanzamiento': 'Ingreso: 2024',
      'color_distintivo': Colors.orange,
      'foto_monumento': 'https://images.unsplash.com/photo-1531123897727-8f129e1688ce?auto=format&fit=facearea&w=256&q=80'
    },
    {
      'nombre': 'Camilo',
      'descripcion': 'Aprendiz de análisis y desarrollo de software.',
      'ubicacion': 'Ficha 2926960',
      'fecha_lanzamiento': 'Ingreso: 2024',
      'color_distintivo': Colors.red,
      'foto_monumento': 'https://images.unsplash.com/photo-1508213929835-9f6e0b6a3f0a?auto=format&fit=facearea&w=256&q=80'
    },
    {
      'nombre': 'Cristian',
      'descripcion': 'Aprendiz de análisis y desarrollo de software.',
      'ubicacion': 'Ficha 2926960',
      'fecha_lanzamiento': 'Ingreso: 2024',
      'color_distintivo': Colors.teal,
      'foto_monumento': 'https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=facearea&w=256&q=80'
    },
    {
      'nombre': 'Ronny',
      'descripcion': 'Aprendiz de análisis y desarrollo de software.',
      'ubicacion': 'Ficha 2926960',
      'fecha_lanzamiento': 'Ingreso: 2024',
      'color_distintivo': Colors.brown,
      'foto_monumento': 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=facearea&w=256&q=80'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FICHA 2926960"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: aprendices.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(aprendices[index]["foto_monumento"]),
            ),
            title: Text(aprendices[index]["nombre"]),
            subtitle: Text(aprendices[index]["ubicacion"]),
            trailing: Icon(Icons.arrow_circle_right_sharp),
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: Text(aprendices[index]["nombre"]),
                      backgroundColor: aprendices[index]["color_distintivo"],
                    ),
                    body: ListView(
                      padding: const EdgeInsets.all(16),
                      children: [
                        CircleAvatar(
                          radius: 100,
                          backgroundImage: NetworkImage(aprendices[index]["foto_monumento"]),
                        ),
                        const SizedBox(height: 20),
                        Text(aprendices[index]["descripcion"], style: TextStyle(fontSize: 18)),
                        Divider(),
                        Text(aprendices[index]["ubicacion"]),
                        Divider(),
                        Text(aprendices[index]["fecha_lanzamiento"]),
                      ],
                    ),
                  );
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.white,
        backgroundColor: Colors.purple,
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: Scaffold(
                  appBar: AppBar(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.purple,
                    title: Text("Nuevo Aprendiz"),
                  ),
                  body: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          TextFormField(
                            controller: txtNombre,
                            decoration: InputDecoration(
                                labelText: "Nombre",
                                hintText: "Nombre del aprendiz",
                                icon: Icon(Icons.person)),
                          ),
                          TextFormField(
                            controller: txtDescripcion,
                            decoration: InputDecoration(
                                labelText: "Descripción",
                                hintText: "Descripción del aprendiz",
                                icon: Icon(Icons.description)),
                          ),
                          TextFormField(
                            controller: txtFechaLanz,
                            decoration: InputDecoration(
                                labelText: "Año de ingreso",
                                hintText: "Ejemplo: 2024",
                                icon: Icon(Icons.date_range)),
                          ),
                          TextFormField(
                            controller: txtUbicacion,
                            decoration: InputDecoration(
                                labelText: "Ficha",
                                hintText: "Ejemplo: Ficha 2926960",
                                icon: Icon(Icons.confirmation_number)),
                          ),
                          TextFormField(
                            controller: txtFotografia,
                            decoration: InputDecoration(
                                labelText: "Fotografía (URL)",
                                hintText: "URL de la foto del aprendiz",
                                icon: Icon(Icons.image)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  floatingActionButton: FloatingActionButton(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.green,
                    onPressed: () {
                      if (txtNombre.text == "") {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                            backgroundColor: Colors.red,
                            content: Text(
                                "ERROR! El nombre del aprendiz está vacío")));
                      } else {
                        setState(() {
                          aprendices.add({
                            'nombre': txtNombre.text,
                            'descripcion': txtDescripcion.text,
                            'ubicacion': txtUbicacion.text,
                            'fecha_lanzamiento': txtFechaLanz.text,
                            'color_distintivo': Colors.grey, // Puedes mejorar esto permitiendo elegir color
                            'foto_monumento': txtFotografia.text
                          });
                          txtNombre.clear();
                          txtDescripcion.clear();
                          txtFechaLanz.clear();
                          txtUbicacion.clear();
                          txtFotografia.clear();
                        });
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor: Colors.green,
                            content: Text(
                                "Se ha guardado satisfactoriamente el aprendiz: ${txtNombre.text}")));
                      }
                    },
                    child: Icon(Icons.save),
                  ),
                ),
              );
            },
          );
        },
        child: Icon(Icons.person_add),
      ),
    );
  }
}
