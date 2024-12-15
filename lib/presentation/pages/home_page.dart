import 'dart:ui';

import 'package:cosmetics_marketplace/presentation/widgets/catalog_tile.dart';
import 'package:cosmetics_marketplace/presentation/widgets/image_view.dart';
import 'package:cosmetics_marketplace/presentation/widgets/list_view_horizontal.dart';
import 'package:cosmetics_marketplace/presentation/widgets/main_page_button.dart';
import 'package:cosmetics_marketplace/presentation/widgets/main_page_title.dart';
import 'package:cosmetics_marketplace/presentation/widgets/product_tile.dart';
import 'package:cosmetics_marketplace/presentation/widgets/uhod_tile.dart';
import 'package:flutter/material.dart';

// Главная страница из ТЗ

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late final List<ScrollController> scrollControllers;

  List<Widget> catalogTiles = const [
    CatalogTile(assetName: "assets/images/chrs1.png", catalogName: "Для лица"),
    CatalogTile(assetName: "assets/images/face.png", catalogName: "Для лица"),
    CatalogTile(assetName: "assets/images/chrs2.png", catalogName: "Для лица"),
    CatalogTile(assetName: "assets/images/skin.png", catalogName: "Для лица"),
    CatalogTile(assetName: "assets/images/hands.png", catalogName: "Для лица"),
  ];

  List<Widget> productTiles1 = const[
    ProductTile(name: "Unstress Total Serenity Serum", type: "Сыворотка", cost: "10 195", assetPath: "assets/images/list1_1.png"),
    ProductTile(name: "Unstress Revitalizing Toner", type: "Тоник", cost: "3095", assetPath: "assets/images/list1_2.png"),
  ];

  List<Widget> productTiles2 = const[
    ProductTile(
      name: "Muse Serum Supreme", 
      type: "Сыворотка", 
      cost: "10 195", 
      assetPath: "assets/images/list2_1.png",
      isForSale: true,
      newCost: "10 195",
    ),
    ProductTile(
      name: "Unstress Revitalizing Toner", 
      type: "Крем", 
      cost: "3195", 
      assetPath: "assets/images/list2_2.png",
      isForSale: true,
      isTwoForOne: true,
      newCost: "1595",
    ),
  ];

  List<Widget> productTiles3 = const[
    ProductTile(name: "Unstress Total Serenity Serum", type: "Сыворотка", cost: "10 195", assetPath: "assets/images/list3_1.png"),
    ProductTile(name: "Illustious Mask", type: "Осветляющая маска", cost: "1595", assetPath: "assets/images/list3_2.png"),
  ];

  List<Widget> uhodTiles = const [
    UhodTile(assetName: "assets/images/uhod_1.png", catalogName: "Демакияж"),
    UhodTile(assetName: "assets/images/uhod_2.png", catalogName: "Очищение"),
    UhodTile(assetName: "assets/images/uhod_3.png", catalogName: "Сыворотка"),
    UhodTile(assetName: "assets/images/uhod_4.png", catalogName: "Дневной крем"),
  ];

 @override
  void initState() {
    super.initState();
    scrollControllers = List.generate(3, (index) => ScrollController());  
}

  @override
  void dispose() {
    for (var controller in scrollControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ImageView(),
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 24),
                  SizedBox(
                    height: 140,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: catalogTiles.length,
                      itemBuilder:(context, index) {
                        return catalogTiles[index];
                      }, 
                    ),
                  ),
                  const MainPageTitle(
                    text: "Новинки", 
                    startColor: Color(0xFFE4FEF9), 
                    endColor: Color(0xFF66F6DC)
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 290,
                    child: ListViewHorizontal(
                      scrollController: scrollControllers[0], 
                      productTileList: productTiles1
                    )
                  ),
                  const SizedBox(height: 32),
                  SizedBox(
                    height: 270,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      children: [
                        Opacity(
                          opacity: 0.23,
                          child: Image.asset(
                            "assets/images/background_image.png",
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Моя схема домашнего ухода",
                                style: TextStyle(
                                  fontFamily: "Raleway",
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18
                                ),
                              ),
                              SizedBox(
                                height: 140,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: uhodTiles.length,
                                  itemBuilder: (context, index) {
                                    return uhodTiles[index];
                                  },
                                ),
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "Ответьте на 10 вопросов, \nи мы подберем нужный уход",
                                    style: TextStyle(
                                      fontFamily: "Raleway",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500
                                    ),
                                  ),
                                  const Expanded(child: SizedBox.shrink()),
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
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),

                  const MainPageTitle(
                    text: "Акции", 
                    startColor: Color(0xFFFFC0E1), 
                    endColor: Color(0xFFF02980)
                  ),

                  const SizedBox(height: 24),

                  SizedBox(
                    height: 290,
                    child: ListViewHorizontal(
                      scrollController: scrollControllers[1], 
                      productTileList: productTiles2
                    )
                  ),

                  const SizedBox(height: 24),

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MainPageButton(text: "Для очищения"),
                      const SizedBox(width: 12),
                      MainPageButton(text: "Для увлажнения"),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MainPageButton(text: "Для питания"),
                      const SizedBox(width: 12),
                      MainPageButton(text: "Для омоложения"),
                    ],
                  ),

                  const SizedBox(height: 24),

                  const MainPageTitle(
                    text: "Акции", 
                    startColor: Color(0xFFF86614), 
                    endColor: Color(0xFFFCBC5C)
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    height: 290,
                    child: ListViewHorizontal(
                      scrollController: scrollControllers[2], 
                      productTileList: productTiles3
                    )
                  ),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
