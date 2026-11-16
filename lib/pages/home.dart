import 'package:ecommerce_app/widgets/support_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool icecream = false, pizza = false, salad = false, burger = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(
            top: 50.0,
            left: 20.0,
            right: 20.0,
            bottom: 20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Encabezado superior y botón de carrito
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hola, ", style: AppWidget.boldTextFeildStyle()),
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              Text(
                "Comida Deliciosa",
                style: AppWidget.headlineTextFeildStyle(),
              ),
              Text(
                "Descubre y ordena tus platillos favoritos",
                style: AppWidget.lightTextFeildStyle(),
              ),
              const SizedBox(height: 20.0),

              // Barra interactiva de categorías
              showItem(),
              const SizedBox(height: 30.0),

              // Carrusel horizontal de platillos destacados
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildHorizontalFoodCard(
                      icon: Icons.eco,
                      iconColor: Colors.green,
                      title: "Veggie Taco Hash",
                      subtitle: "Fresco y saludable",
                      price: "\$25",
                    ),
                    const SizedBox(width: 15.0),
                    _buildHorizontalFoodCard(
                      icon: Icons.local_pizza,
                      iconColor: Colors.orange,
                      title: "Mix Veg Salad",
                      subtitle: "Con aderezo especial",
                      price: "\$28",
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30.0),

              // Tarjeta vertical inferior
              _buildVerticalFoodCard(
                icon: Icons.lunch_dining,
                iconColor: Colors.brown,
                title: "Mediterranean Chickpea Salad",
                subtitle: "Con queso de cabra y miel",
                price: "\$28",
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget para la fila de categorías seleccionables
  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildCategoryButton(
          icon: Icons.icecream,
          isSelected: icecream,
          onTap: () {
            setState(() {
              icecream = true;
              pizza = false;
              salad = false;
              burger = false;
            });
          },
        ),
        _buildCategoryButton(
          icon: Icons.local_pizza,
          isSelected: pizza,
          onTap: () {
            setState(() {
              icecream = false;
              pizza = true;
              salad = false;
              burger = false;
            });
          },
        ),
        _buildCategoryButton(
          icon: Icons.eco,
          isSelected: salad,
          onTap: () {
            setState(() {
              icecream = false;
              pizza = false;
              salad = true;
              burger = false;
            });
          },
        ),
        _buildCategoryButton(
          icon: Icons.lunch_dining,
          isSelected: burger,
          onTap: () {
            setState(() {
              icecream = false;
              pizza = false;
              salad = false;
              burger = true;
            });
          },
        ),
      ],
    );
  }

  Widget _buildCategoryButton({
    required IconData icon,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          decoration: BoxDecoration(
            color: isSelected ? Colors.black : Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.all(10),
          child: Icon(
            icon,
            size: 35,
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }

  Widget _buildHorizontalFoodCard({
    required IconData icon,
    required Color iconColor,
    required String title,
    required String subtitle,
    required String price,
  }) {
    return Container(
      margin: const EdgeInsets.all(4),
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 130,
                width: 150,
                decoration: BoxDecoration(
                  color: iconColor.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(icon, size: 70, color: iconColor),
              ),
              const SizedBox(height: 10.0),
              Text(title, style: AppWidget.semiBoldTextFeildStyle()),
              const SizedBox(height: 5.0),
              Text(subtitle, style: AppWidget.lightTextFeildStyle()),
              const SizedBox(height: 5.0),
              Text(price, style: AppWidget.semiBoldTextFeildStyle()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildVerticalFoodCard({
    required IconData icon,
    required Color iconColor,
    required String title,
    required String subtitle,
    required String price,
  }) {
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 110,
              width: 110,
              decoration: BoxDecoration(
                color: iconColor.withValues(alpha: 0.12),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(icon, size: 60, color: iconColor),
            ),
            const SizedBox(width: 15.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: AppWidget.semiBoldTextFeildStyle()),
                  const SizedBox(height: 5.0),
                  Text(subtitle, style: AppWidget.lightTextFeildStyle()),
                  const SizedBox(height: 5.0),
                  Text(price, style: AppWidget.semiBoldTextFeildStyle()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
