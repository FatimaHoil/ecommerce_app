import 'package:ecommerce_app/pages/signup.dart';
import 'package:ecommerce_app/widgets/support_widget.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // Fondo superior con degradado naranja/rojo
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFFff5c30), Color(0xFFe74b1a)],
                ),
              ),
            ),

            // Contenedor blanco inferior con esquinas superiores redondeadas
            Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 3,
              ),
              height: MediaQuery.of(context).size.height / 1.5,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
            ),

            // Contenido principal superpuesto (Logo + Tarjeta de formulario)
            Container(
              margin: const EdgeInsets.only(top: 60.0, left: 20.0, right: 20.0),
              child: Column(
                children: [
                  // Ícono o logotipo superior de la app
                  const Center(
                    child: Icon(
                      Icons.fastfood_rounded,
                      size: 80,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 40.0),

                  // Tarjeta elevada que contiene los campos de texto
                  Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 30.0,
                      ),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Iniciar Sesión",
                            style: AppWidget.headlineTextFeildStyle(),
                          ),
                          const SizedBox(height: 30.0),

                          // Campo de correo electrónico
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Correo electrónico',
                              hintStyle: AppWidget.semiBoldTextFeildStyle(),
                              prefixIcon: const Icon(Icons.email_outlined),
                            ),
                          ),
                          const SizedBox(height: 25.0),

                          // Campo de contraseña (obscureText oculta los caracteres)
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Contraseña',
                              hintStyle: AppWidget.semiBoldTextFeildStyle(),
                              prefixIcon: const Icon(Icons.password_outlined),
                            ),
                          ),
                          const SizedBox(height: 20.0),

                          // Texto de recuperación de contraseña alineado a la derecha
                          Container(
                            alignment: Alignment.topRight,
                            child: Text(
                              "¿Olvidaste tu contraseña?",
                              style: AppWidget.semiBoldTextFeildStyle(),
                            ),
                          ),
                          const SizedBox(height: 45.0),

                          // Botón principal de Iniciar Sesión
                          Material(
                            elevation: 5.0,
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 12.0,
                              ),
                              width: 200,
                              decoration: BoxDecoration(
                                color: const Color(0Xffff5722),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Center(
                                child: Text(
                                  "ENTRAR",
                                  style: TextStyle(
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
                    ),
                  ),
                  const SizedBox(height: 40.0),

                  // Enlace para ir a la pantalla de Registro
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignUp()),
                      );
                    },
                    child: Text(
                      "¿No tienes cuenta? Regístrate",
                      style: AppWidget.semiBoldTextFeildStyle(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
