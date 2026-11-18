import 'package:ecommerce_app/pages/signup.dart';
import 'package:ecommerce_app/widgets/content_model.dart';
import 'package:ecommerce_app/widgets/support_widget.dart';
import 'package:flutter/material.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  // Índice de la diapositiva actual (0, 1 o 2)
  int currentIndex = 0;
  // Controlador para cambiar de página al presionar el botón
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    // Libera memoria del controlador al cerrar la pantalla
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Carrusel deslizable con las 3 pantallas de bienvenida
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                // Actualiza el índice y los puntos indicadores al deslizar
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.only(
                    top: 60.0,
                    left: 20.0,
                    right: 20.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Contenedor circular con el ícono ilustrativo
                      Container(
                        height: 240,
                        width: 240,
                        decoration: BoxDecoration(
                          color: contents[i].iconColor.withValues(alpha: 0.12),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          contents[i].icon,
                          size: 120,
                          color: contents[i].iconColor,
                        ),
                      ),
                      const SizedBox(height: 40.0),

                      // Título principal de la diapositiva
                      Text(
                        contents[i].title,
                        textAlign: TextAlign.center,
                        style: AppWidget.headlineTextFeildStyle(),
                      ),
                      const SizedBox(height: 20.0),

                      // Descripción secundaria
                      Text(
                        contents[i].description,
                        textAlign: TextAlign.center,
                        style: AppWidget.lightTextFeildStyle(),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          // Fila de puntos indicadores de progreso
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              contents.length,
              (index) => buildDot(index, context),
            ),
          ),

          // Botón inferior ("Siguiente" en las primeras dos, "Comenzar" en la última)
          GestureDetector(
            onTap: () {
              // Si estamos en la última diapositiva, navega al Registro
              if (currentIndex == contents.length - 1) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUp()),
                );
              } else {
                // Si no, avanza suavemente a la siguiente diapositiva
                _controller.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              }
            },
            child: Container(
              height: 55,
              margin: const EdgeInsets.all(40),
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFFff5c30),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  currentIndex == contents.length - 1
                      ? "Comenzar"
                      : "Siguiente",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Método auxiliar que dibuja cada punto indicador (más ancho si está activo)
  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10.0,
      width: currentIndex == index ? 22 : 10,
      margin: const EdgeInsets.only(right: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: currentIndex == index ? const Color(0xFFff5c30) : Colors.black26,
      ),
    );
  }
}
