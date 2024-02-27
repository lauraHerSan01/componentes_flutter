import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';

class InputsScreenState extends StatefulWidget {
  const InputsScreenState({super.key});

  @override
  State<InputsScreenState> createState() => _InputsScreenStateState();
}

class _InputsScreenStateState extends State<InputsScreenState> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: const Text('Entradas'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Entradas',
            style: AppTheme.lightTheme.textTheme.headlineLarge,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: null,
                child: Text('Regreasar',
                    style: AppTheme.lightTheme.textTheme.bodySmall),
              ),
              ElevatedButton(
                onPressed: null,
                child: Text('Ventana de Datos',
                    style: AppTheme.lightTheme.textTheme.bodySmall),
              ),
            ],
          ),
        ],
      ),
    );
  }
}