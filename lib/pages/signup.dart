import 'package:ecommerce_app/pages/login.dart';
import 'package:ecommerce_app/widgets/support_widget.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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

            // Contenedor blanco inferior redondeado
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

            // Contenido principal (Logo + Formulario de registro)
            Container(
              margin: const EdgeInsets.only(top: 60.0, left: 20.0, right: 20.0),
              child: Column(
                children: [
                  const Center(
                    child: Icon(
                      Icons.fastfood_rounded,
                      size: 80,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 40.0),

                  // Tarjeta elevada con los 3 campos de registro
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
                            "Crear Cuenta",
                            style: AppWidget.headlineTextFeildStyle(),
                          ),
                          const SizedBox(height: 30.0),

                          // Campo de nombre de usuario
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Nombre',
                              hintStyle: AppWidget.semiBoldTextFeildStyle(),
                              prefixIcon: const Icon(Icons.person_outlined),
                            ),
                          ),
                          const SizedBox(height: 25.0),

                          // Campo de correo electrónico
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Correo electrónico',
                              hintStyle: AppWidget.semiBoldTextFeildStyle(),
                              prefixIcon: const Icon(Icons.email_outlined),
                            ),
                          ),
                          const SizedBox(height: 25.0),

                          // Campo de contraseña
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Contraseña',
                              hintStyle: AppWidget.semiBoldTextFeildStyle(),
                              prefixIcon: const Icon(Icons.password_outlined),
                            ),
                          ),
                          const SizedBox(height: 45.0),

                          // Botón principal de Registro
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
                                  "REGISTRARSE",
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

                  // Enlace para volver a Iniciar Sesión
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LogIn()),
                      );
                    },
                    child: Text(
                      "¿Ya tienes cuenta? Inicia sesión",
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
