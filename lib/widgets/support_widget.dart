import 'package:flutter/material.dart';

class AppWidget {
  // Estilo en negrita para títulos medianos (ej. "Hola, Fatima")
  static TextStyle boldTextFeildStyle() {
    return const TextStyle(
      color: Colors.black,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    );
  }

  // Estilo grande para encabezados principales (ej. "Comida Deliciosa")
  static TextStyle headlineTextFeildStyle() {
    return const TextStyle(
      color: Colors.black,
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
    );
  }

  // Estilo tenue/gris para subtítulos y descripciones
  static TextStyle lightTextFeildStyle() {
    return const TextStyle(
      color: Colors.black38,
      fontSize: 15.0,
      fontWeight: FontWeight.w500,
    );
  }

  // Estilo semi-negrita para nombres de platillos y precios
  static TextStyle semiBoldTextFeildStyle() {
    return const TextStyle(
      color: Colors.black,
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
    );
  }
}
