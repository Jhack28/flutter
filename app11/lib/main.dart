import 'package:flutter/material.dart';
import 'api/consultar_aprendices.dart';
import 'models/aprendiz.dart';
import 'widgets/chronoguard_timer.dart';

void main() {
  runApp(const Principal());
}

class Principal extends StatelessWidget {
  const Principal({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
  late Future<List<Aprendiz>> aprendicesFuture;

  @override
  void initState() {
    super.initState();
    aprendicesFuture = consultarAprendices();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FICHA 2926960"),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: FutureBuilder<List<Aprendiz>>(
        future: aprendicesFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No hay aprendices registrados.'));
          }
          final aprendices = snapshot.data!;
          return ListView.builder(
            itemCount: aprendices.length,
            itemBuilder: (context, index) {
              final aprendiz = aprendices[index];
              return Card(
                color: Color(int.parse(aprendiz.color)),
                elevation: 3,
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(aprendiz.fotoUrl),
                  ),
                  title: Text(aprendiz.nombre, style: const TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text('${aprendiz.ficha} | ${aprendiz.ingreso}'),
                  trailing: const Icon(Icons.arrow_circle_right_outlined),
                  onTap: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return Scaffold(
                          appBar: AppBar(
                            backgroundColor: Color(int.parse(aprendiz.color)),
                            title: Text(aprendiz.nombre),
                          ),
                          body: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 70,
                                  backgroundImage: NetworkImage(aprendiz.fotoUrl),
                                ),
                                const SizedBox(height: 20),
                                Text(aprendiz.descripcion, style: const TextStyle(fontSize: 18)),
                                const Divider(),
                                Text(aprendiz.ficha),
                                const Divider(),
                                Text(aprendiz.ingreso),
                                const SizedBox(height: 20),
                                // ChronoGuard Timer aquí (ejemplo: 5 minutos)
                                const ChronoGuardTimer(duration: Duration(minutes: 5)),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
