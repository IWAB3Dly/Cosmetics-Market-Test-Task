import 'package:cosmetics_marketplace/presentation/pages/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        
      ),
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
    );
  }
}