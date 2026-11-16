import 'package:ecommerce_app/pages/bottomnav.dart';
import 'package:flutter/material.dart';

void main() {
  // Inicia la ejecución de la aplicación Flutter
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Oculta la cinta roja "DEBUG" de la esquina superior derecha
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      // Establece BottomNav como pantalla principal al abrir la app
      home: const BottomNav(),
    );
  }
}
