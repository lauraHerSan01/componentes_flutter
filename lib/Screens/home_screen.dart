import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Componentes de Flutter'),
      ),
      body: ListView(
        children: <Widget> [
          ListTile(
            title: Text(
              'Entradas',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
              ),
            subtitle: Text('Introducioendo valores',
             style: AppTheme.lightTheme.textTheme.bodySmall,
            ),
            leading: const Icon(Icons.input),
            trailing: const Icon(Icons.arrow_circle_right_rounded),
          ),
          const Divider(),
           ListTile(
            title: Text('Listview.builder',
             style: AppTheme.lightTheme.textTheme.headlineLarge,
             ),
            subtitle: const Text('Lista con sroll infinito'),
            leading: const Icon(Icons.beach_access),
            trailing: const Icon(Icons.arrow_circle_right_rounded),
          ),
          const Divider(),
           ListTile(
            title: Text(
              'Notificaciones',
             style: AppTheme.lightTheme.textTheme.headlineLarge,
             ),
            subtitle: const Text('Mostar una notificacion '),
            leading: const Icon(Icons.input),
            trailing: const Icon(Icons.arrow_circle_right_rounded),
          ),
        ],
      ),
    );
  }
}