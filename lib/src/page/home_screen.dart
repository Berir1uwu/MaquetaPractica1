import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.lightGreen,
              ),
              child: Text(
                'Menú de Opciones',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Mi perfil'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.games),
              title: Text('Mis juegos de interés'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GamesOfInterestScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.fitness_center),
              title: Text('Crear rutina de entrenamiento'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CreateTrainingRoutineScreen()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Bienvenido a ChinitaGame'),
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi Perfil'),
      ),
      body: Center(
        child: Text('Pantalla de Mi Perfil'),
      ),
    );
  }
}

class GamesOfInterestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mis Juegos de Interés'),
      ),
      body: Center(
        child: Text('Pantalla de Mis Juegos de Interés'),
      ),
    );
  }
}

class CreateTrainingRoutineScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crear Rutina de Entrenamiento'),
      ),
      body: Center(
        child: Text('Pantalla de Crear Rutina de Entrenamiento'),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}
