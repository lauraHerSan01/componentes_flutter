//Definicion de los temas de estilo de la app 
import 'package:flutter/material.dart';

class AppTheme{
//Constantes de color primario
  static const primatyColoo = Color.fromARGB(255, 255, 0, 0);

  static const backColor = Color.fromARGB(45, 3, 67, 65);
//Constante de tema
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      scaffoldBackgroundColor: const Color.fromARGB(142, 128, 100, 156),
      primaryColor: const Color.fromARGB(246, 217, 12, 115),
      appBarTheme: const AppBarTheme(
        color: Color.fromARGB(255, 234, 145, 789),
  ));
  
  static final ThemeData darkTheme = ThemeData.dark().copyWith();
}