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
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        Text(
          'Entradas',
        style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: null, 
              child: Text('Regresar',
              style:AppTheme.lightTheme.textTheme.bodySmall,
            )
            ),
             ElevatedButton(
              onPressed: null, 
              child: Text('Ventana de datos',
              style:AppTheme.lightTheme.textTheme.bodySmall,
            )
            ),
          ],
        )
        ],
    );
  }
}