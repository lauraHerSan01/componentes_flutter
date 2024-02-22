import 'package:flutter/material.dart';
import 'package:practica3/Screens/infinite_scroll_screen.dart';
import 'package:practica3/Screens/inputs_screen.dart';
import 'package:practica3/Screens/notifications_screen.dart';
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
            onTap: () {
              final ruta1 = MaterialPageRoute(builder: (context){
                return const InputsScreenState();
              });
              Navigator.push(context, ruta1);
            }
          ),
          const Divider(),
           ListTile(
            title: Text('Listview.builder',
             style: AppTheme.lightTheme.textTheme.headlineLarge,
             ),
            subtitle: const Text('Lista con sroll infinito'),
            leading: const Icon(Icons.beach_access),
            trailing: const Icon(Icons.arrow_circle_right_rounded),
            onTap: () {
              final ruta2 = MaterialPageRoute(builder: (context){
                return const InfiniteScollScreen();
              });
              Navigator.push(context, ruta2);
            }
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
            onTap: () {
              final ruta3 = MaterialPageRoute(builder: (context){
                return const NotificationsScreen();
              });
              Navigator.push(context, ruta3);
            }
          ),
        ],
      ),
    );
  }
}