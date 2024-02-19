import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Componentes de Flutter'),
      ),
      body: ListView(
        children:const <Widget> [
          ListTile(
            title: Text('El super Bowl'),
            subtitle: Text('Bon Sponja - Sweet Victory'),
            leading: Icon(Icons.casino),
            trailing: Icon(Icons.arrow_circle_right_rounded),
          ),
          Divider(),
          ListTile(
            title: Text('El super Bowl'),
            subtitle: Text('Alicia Keys - If I aint Got you y my boo'),
            leading: Icon(Icons.beach_access),
            trailing: Icon(Icons.arrow_circle_right_rounded),
          ),
          Divider(),
          ListTile(
            title: Text('El super Bowl'),
            subtitle: Text('Post Malone - America The Beautiful'),
            leading: Icon(Icons.safety_check),
            trailing: Icon(Icons.arrow_circle_right_rounded),
          ),
        ],
      ),
    );
  }
}