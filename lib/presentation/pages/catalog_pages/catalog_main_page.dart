import 'package:cosmetics_marketplace/presentation/widgets/catalog_menu_text.dart';
import 'package:flutter/material.dart';

class CatalogMainPage extends StatelessWidget {
  const CatalogMainPage({
    super.key,
    required this.navigateToPage
  });

  final VoidCallback navigateToPage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        width: 24,
                        height: 24,
                        "assets/images/bottom_search_icon.png",
                        color: Colors.black.withOpacity(0.5)
                      ),
                      const SizedBox(width: 12),
                      SizedBox(
                        width: MediaQuery.of(context).size.width-92,
                        child: TextField(
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Поиск",
                            hintStyle: TextStyle(
                              fontFamily: "Raleway",
                              fontSize: 18,
                              color: Colors.black.withOpacity(0.5)
                            )
                          ),
                          style: const TextStyle(
                            fontFamily: "Raleway",
                            fontSize: 18
                          ),
                          
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width-48,
                    height: 1,
                    color: Colors.black.withOpacity(0.5),
                  ),
            
                  const SizedBox(height: 24),
            
                  CatalogMenuText(
                    text: "Назначение", 
                    onTap: () => navigateToPage() 
                  ),
                  CatalogMenuText(
                    text: "Тип средства", 
                    onTap: () => navigateToPage() 
                  ),
                  CatalogMenuText(
                    text: "Тип кожи", 
                    onTap: () => navigateToPage() 
                  ),
                  CatalogMenuText(
                    text: "Линия косметики", 
                    onTap: () => navigateToPage() 
                  ),
                  CatalogMenuText(
                    text: "Наборы", 
                    onTap: () => navigateToPage() 
                  ),
                  Row(
                    children: [
                      CatalogMenuText(
                        text: "Акции", 
                        onTap: () => navigateToPage() 
                      ),
                      const SizedBox(width: 6),
                      Image.asset(
                        "assets/images/percent_icon.png",
                        width: 24,
                        height: 24,
                        color: const Color(0xFFF47DDA),
                      )
                    ],
                  ),
                  CatalogMenuText(
                    text: "Консусльтация \nс косметологом", 
                    onTap: () => navigateToPage()
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 180,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Opacity(
                    opacity: 0.43,
                    child: Image.asset(
                      "assets/images/background_image.png",
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Сотавим схему идеального \nдомашнего ухода",
                          style: TextStyle(
                            fontFamily: "Raleway",
                            fontWeight: FontWeight.w700,
                            fontSize: 18
                          ),
                        ),
                        const Text(
                          "10 вопросов о вашей коже",
                          style: TextStyle(
                            fontFamily: "Raleway",
                            fontSize: 14,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        ElevatedButton(
                          onPressed: (){}, 
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            backgroundColor: const Color(0xFF2b2b2b)
                          ),
                          child: const Text(
                            "Пройти тест",
                            style: TextStyle(
                              fontFamily: "Raleway",
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14
                            ),
                          )
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ) 
      ),
    );
  }
}