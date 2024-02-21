import 'package:flutter/material.dart';

class InputsScreenState extends StatefulWidget {
  const InputsScreenState({super.key});

  @override
  State<InputsScreenState> createState() => _InputsScreenStateState();
}

class _InputsScreenStateState extends State<InputsScreenState> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Pantalla de entradas'),
    );
  }
}