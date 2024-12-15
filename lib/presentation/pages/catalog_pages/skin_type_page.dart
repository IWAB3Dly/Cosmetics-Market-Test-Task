import 'package:cosmetics_marketplace/presentation/widgets/catalog_menu_text.dart';
import 'package:flutter/material.dart';

// Страница По типу кожи из ТЗ

class SkinTypePage extends StatelessWidget {
  const SkinTypePage({
    super.key,
    required this.navigateToNextPage,
    required this.navigateToPreviousPage,
  });

  final VoidCallback navigateToNextPage;
  final VoidCallback navigateToPreviousPage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: navigateToPreviousPage,
                      child: const Icon(Icons.arrow_back_ios_rounded),
                    ),
                  ),
                  const Text(
                    "По типу кожи",
                    style: TextStyle(
                      fontFamily: "Raleway",
                      fontWeight: FontWeight.w700,
                      fontSize: 20
                    ),
                  ),
                  const Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Colors.white,
                  ),
                ],
              ),
              
              const SizedBox(height: 24 ),

              CatalogMenuText(
                text: "Жирная", 
                onTap: () => navigateToNextPage()
              ),
              CatalogMenuText(
                text: "Комбинированная", 
                onTap: () => navigateToNextPage()
              ),
              CatalogMenuText(
                text: "Нормальная", 
                onTap: () => navigateToNextPage()
              ),
              CatalogMenuText(
                text: "Сухая", 
                onTap: () => navigateToNextPage()
              ),
              CatalogMenuText(
                text: "Любой тип", 
                onTap: () => navigateToNextPage()
              ),
            ],
          ),
        ),
      ),
    );
  }
}