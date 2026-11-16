import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecommerce_app/pages/home.dart';
import 'package:ecommerce_app/pages/order.dart';
import 'package:ecommerce_app/pages/profile.dart';
import 'package:ecommerce_app/pages/wallet.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  // Índice de la pestaña activa (0 = Inicio)
  int currentTabIndex = 0;

  // Lista que almacena las 4 pantallas de la barra
  late List<Widget> pages;
  late Home homepage;
  late Order order;
  late Wallet wallet;
  late Profile profile;

  @override
  void initState() {
    // Se inicializan las pantallas al cargar la navegación
    homepage = const Home();
    order = const Order();
    wallet = const Wallet();
    profile = const Profile();

    // El orden debe coincidir exactamente con el orden de los íconos de abajo
    pages = [homepage, order, wallet, profile];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
        backgroundColor: Colors.white, // Fondo detrás de la curva
        color: Colors.black, // Color de la barra
        animationDuration: const Duration(milliseconds: 500),
        onTap: (int index) {
          // Actualiza el índice y muestra la pantalla seleccionada
          setState(() {
            currentTabIndex = index;
          });
        },
        items: const [
          Icon(Icons.home_outlined, color: Colors.white),
          Icon(Icons.shopping_bag_outlined, color: Colors.white),
          Icon(Icons.wallet_outlined, color: Colors.white),
          Icon(Icons.person_outline, color: Colors.white),
        ],
      ),
      body: pages[currentTabIndex],
    );
  }
}
