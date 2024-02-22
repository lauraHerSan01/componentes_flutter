//Definicion de los temas de estilo de la app 
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AppTheme{
//Constantes de color primario
  static const primatyColor = Color.fromARGB(255, 97, 238, 191);
  //constante de color secundario
  static const secondaryColor = Color.fromARGB(255, 137, 35, 255);
  //cponstante de color de fondo 
  static const backColor = Color.fromARGB(255, 235, 241, 241);

//Constante de tema
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      scaffoldBackgroundColor: const Color.fromARGB(142, 175, 174, 175),
      primaryColor: const Color.fromARGB(246, 247, 247, 247),
      appBarTheme: const AppBarTheme(
        color: Color.fromARGB(255, 97, 238, 191)
  ),
  textTheme: TextTheme(
    //titulos muy grandes 
    headlineLarge: GoogleFonts.prozaLibre(
    color: primatyColor,
    fontSize: 26.5,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.italic,
    decoration:TextDecoration.underline,
    decorationColor: primatyColor,
    decorationStyle: TextDecorationStyle.dotted,
  ),
  //Estilo para texto muy pequeño
    bodySmall: GoogleFonts.abel(
      color: secondaryColor,
      fontSize: 16.0,
    ),
  ),
  );
  
}

