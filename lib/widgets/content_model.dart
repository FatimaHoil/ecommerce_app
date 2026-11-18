import 'package:flutter/material.dart';

// Clase modelo que define la estructura de cada pantalla de bienvenida
class OnboardingContent {
  final IconData icon;
  final Color iconColor;
  final String title;
  final String description;

  OnboardingContent({
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.description,
  });
}

// Lista con las 3 diapositivas que verá el usuario al abrir la app
List<OnboardingContent> contents = [
  OnboardingContent(
    icon: Icons.restaurant_menu_rounded,
    iconColor: const Color(0xFFff5c30),
    title: 'Elige de nuestro\nmejor menú',
    description: 'Selecciona tus platillos favoritos entre\nmás de 35 opciones deliciosas',
  ),
  OnboardingContent(
    icon: Icons.credit_score_rounded,
    iconColor: const Color(0xFFff5c30),
    title: 'Pago fácil\ny en línea',
    description:
        'Puedes pagar en efectivo al recibir\no con tarjeta de forma segura',
  ),
  OnboardingContent(
    icon: Icons.delivery_dining_rounded,
    iconColor: const Color(0xFFff5c30),
    title: 'Entrega rápida\nhasta tu puerta',
    description:
        'Llevamos tu pedido caliente y a tiempo\nhasta la puerta de tu casa',
  ),
];
