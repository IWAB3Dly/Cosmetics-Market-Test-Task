import 'package:flutter/material.dart';

// Страница "Корзина", ее в ТЗ нет, поэтому тут просто текст

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          "Тут должна быть корзина, но ее нет в тз"
        ),
      ),
    );
  }
}