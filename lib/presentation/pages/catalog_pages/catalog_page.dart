import 'package:cosmetics_marketplace/presentation/pages/catalog_main_page.dart';
import 'package:cosmetics_marketplace/presentation/pages/skin_products_page.dart';
import 'package:cosmetics_marketplace/presentation/pages/skin_type_page.dart';
import 'package:flutter/material.dart';

class CatalogPage extends StatefulWidget {
  const CatalogPage({super.key});

  @override
  State<CatalogPage> createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {

  void changePageIndex(int index){
    setState(() => currentIndex = index);
  }

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> catalogPages = [
      CatalogMainPage(navigateToPage: ()=> changePageIndex(1)),
      SkinTypePage(
        navigateToNextPage: ()=> changePageIndex(2),
        navigateToPreviousPage: ()=> changePageIndex(0),
      ),
      SkinProductsPage(
        navigateToPreviousPage: ()=> changePageIndex(1)
      ),
    ];
    return Scaffold(
      body: catalogPages[currentIndex]
    );
  }
}