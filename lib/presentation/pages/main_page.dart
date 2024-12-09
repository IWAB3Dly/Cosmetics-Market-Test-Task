import 'package:cosmetics_marketplace/presentation/pages/catalog_page.dart';
import 'package:cosmetics_marketplace/presentation/pages/home_page.dart';
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
    const CatalogPage()
  ];

  void _changePageIndex(int index){
    setState(() => currentPageIndex = index);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPageIndex,
        selectedItemColor: Colors.black,
        onTap: _changePageIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Главная"  
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Каталог"  
          )
        ] 
      ),
    );
  }
}