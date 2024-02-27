//Definicion de los temas de estilo de la app 
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AppTheme{
//Constantes de color primario
  static const primatyColor = Color.fromARGB(255, 13, 184, 127);
  //constante de color secundario
  static const secondaryColor = Color.fromARGB(255, 137, 35, 255);
  //cponstante de color de fondo 
  static const backColor = Color.fromARGB(255, 235, 241, 241);

//Constante de tema
   static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,
    appBarTheme: AppBarTheme(
      color: primatyColor,
      titleTextStyle: GoogleFonts.lato(
        color: Colors.white,
        fontSize: 28.5,
        fontWeight: FontWeight.bold,
      ),
    ),
    iconTheme: const IconThemeData(
      color: primatyColor,
      size: 35.0,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          primatyColor,
        ),
        foregroundColor: MaterialStateProperty.all(
          Colors.white,
        ),
        textStyle: MaterialStateProperty.all(
          GoogleFonts.pacifico(fontSize: 25.0),
        ),
      ),
    ),
    textTheme: TextTheme(
      //Titulos muy grandes
      headlineLarge: GoogleFonts.outfit(
        color: primatyColor,
        fontSize: 26.5,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.italic,
        // decoration: TextDecoration.underline,
        // decorationColor: primaryColor,
        // decorationStyle: TextDecorationStyle.wavy,
        // decorationThickness: 3.0,
      ),
      headlineMedium: GoogleFonts.montserrat(
        color: secondaryColor,
        fontSize: 21.5,
        fontWeight: FontWeight.bold,
      ),
      //estilo para text muy pequeño
      bodySmall: GoogleFonts.montserrat(
        color: secondaryColor,
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.italic,
        // decoration: TextDecoration.underline,
        // decorationColor: primaryColor,
        // decorationStyle: TextDecorationStyle.wavy,
        // decorationThickness: 3.0,
      ),
    ),
  );
}