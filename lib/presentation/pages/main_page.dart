import 'package:cosmetics_marketplace/presentation/pages/cart_page.dart';
import 'package:cosmetics_marketplace/presentation/pages/catalog_page.dart';
import 'package:cosmetics_marketplace/presentation/pages/home_page.dart';
import 'package:cosmetics_marketplace/presentation/pages/profile_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  
  int currentPageIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const CatalogPage(),
    const CartPage(),
    const ProfilePage()
  ];

  void _changePageIndex(int index){
    setState(() => currentPageIndex = index);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentPageIndex,
        selectedItemColor: Colors.black,
        onTap: _changePageIndex,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              width: 24,
              height: 24,
              "assets/images/bottom_home_icon.png"
            ),
            label: "Главная",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              width: 24,
              height: 24,
              "assets/images/bottom_search_icon.png"
            ),
            label: "Каталог",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              width: 24,
              height: 24,
              "assets/images/bottom_cart_icon.png"
            ),
            label: "Корзина",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              width: 24,
              height: 24,
              "assets/images/bottom_profile_icon.png"
            ),
            label: "Профиль",
          ),
        ] 
      ),
    );
  }
}