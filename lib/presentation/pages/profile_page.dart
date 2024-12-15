import 'package:flutter/material.dart';

// Страница профиля, ее в ТЗ нет, поэтому тут просто текст

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          "Тут должен быть профиль, но его нет в тз"
        ),
      ),
    );
  }
}