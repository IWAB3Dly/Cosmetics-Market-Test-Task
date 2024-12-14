import 'package:cosmetics_marketplace/presentation/pages/filter_page.dart';
import 'package:cosmetics_marketplace/presentation/widgets/product_tile.dart';
import 'package:flutter/material.dart';

class SkinProductsPage extends StatefulWidget {
  const SkinProductsPage({
    super.key,
    required this.navigateToPreviousPage
  });

  final VoidCallback navigateToPreviousPage;

  @override
  State<SkinProductsPage> createState() => _SkinProductsPageState();
}

class _SkinProductsPageState extends State<SkinProductsPage> {

  List<String> typeTiles = ["Очищение","Увлажнение","Регенерация","Огнестойкость","Прыгучесть",];

  int currentType = 1;

  List<Widget> productTiles = const[
    ProductTile(name: "Unstress Total Serenity Serum", type: "Сыворотка", cost: "10 195", assetPath: "assets/images/list1_1.png"),
    ProductTile(name: "Unstress Total Serenity Serum", type: "Сыворотка", cost: "10 195", assetPath: "assets/images/list1_1.png"),
    ProductTile(name: "Unstress Total Serenity Serum", type: "Сыворотка", cost: "10 195", assetPath: "assets/images/list1_1.png"),
    ProductTile(name: "Unstress Total Serenity Serum", type: "Сыворотка", cost: "10 195", assetPath: "assets/images/list1_1.png"),
    ProductTile(name: "Unstress Total Serenity Serum", type: "Сыворотка", cost: "10 195", assetPath: "assets/images/list1_1.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: widget.navigateToPreviousPage,
                    child: const Icon(Icons.arrow_back_ios_new_rounded)
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    "Средства \nдля жирной кожи",
                    style: TextStyle(
                      fontFamily: "Raleway",
                      fontWeight: FontWeight.w600,
                      fontSize: 26
                    ),
                  ),
                  const SizedBox(height: 22),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "28 продуктов",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w400,
                          fontSize: 18  
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => const FilterPage(),)
                        ),
                        child: Image.asset(
                          "assets/images/settings_icon.png",
                          height: 24,
                          width: 24,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: typeTiles.length,
                itemBuilder:(context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: GestureDetector(
                      onTap: () => setState(() => currentType = index),
                      child: Container(
                        decoration: BoxDecoration(
                          color: currentType==index? const Color(0xFF171717) : const Color(0xFFF4F4F4),
                          borderRadius: BorderRadius.circular(11)
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Center(
                          child: Text(
                            typeTiles[index],
                            style: TextStyle(
                              fontFamily: "Raleway",
                              fontSize: 15,
                              color: currentType==index? const Color(0xFFF4F4F4) : Colors.black
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: ListView.builder(
                itemCount: (productTiles.length/2).ceil(),
                itemBuilder:(context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        productTiles[index*2],
                        (productTiles.length>index*2+1)?
                          productTiles[index*2+1]:
                          const SizedBox(width: 190),
                      ],
                    ),
                  );
                }, 
              ),
            )
          ],
        ),
      ),
    );
  }
}