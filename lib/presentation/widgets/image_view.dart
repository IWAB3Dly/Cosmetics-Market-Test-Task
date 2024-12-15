import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// Это PageView с главной страницы - виджет в котором пролистываем картинки

class ImageView extends StatefulWidget {
  const ImageView({super.key});

  @override
  State<ImageView> createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {

  
  final PageController _imageController = PageController();

  @override
  void dispose() {
    _imageController.dispose();
    super.dispose();
  }

  final List<String> imageAssets = [
    'assets/images/image1.png',
    'assets/images/image2.png',
    'assets/images/image1.png',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 359,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: SizedBox(
              height: 359,
              child: PageView.builder(
                onPageChanged: (value) => setState(() {
                  currentIndex =  value;
                }),
                controller: _imageController,
                itemBuilder: (context, index) { 
                  final actualIndex = (kIsWeb)? 
                    currentIndex % imageAssets.length:
                    index % imageAssets.length;
                  return Image.asset(
                    alignment: const Alignment(0, -0.2),
                    imageAssets[actualIndex],
                    fit: BoxFit.cover,
                  );
                }
              ),
            ) 
          ),
          Positioned(
            top: 30,
            child: IgnorePointer(
              child: Container(
                height:  359,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Color(0xFF2c2c2c)
                    ]
                  )
                ),
              ),
            ) 
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(
                  3, // Количество точек
                  (index) => Container(
                    margin: const EdgeInsets.all(4),
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: currentIndex%imageAssets.length == index ? 
                       const Color(0xFFd9d9d9): 
                       const Color(0xFFd9d9d9).withOpacity(0.5),
                    ),
                  ),
                ),
              ),
            )
          ),
          Positioned(
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.only(
                right: 10,
                left: 24,
                bottom: 24
              ),
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width-34),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Скидка -15%",
                      style: TextStyle(
                        fontFamily: "RaleWay",
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 35
                      ),
                    ),
                    Row(
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Сыворотка",
                              style: TextStyle(
                                fontFamily: "Raleway",
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 16
                              ),
                            ),
                            Text(
                              "HA EYE & NECK SERUM",
                              style: TextStyle(
                                fontFamily: "Raleway",
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 16
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () => print("Перешли"),
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 11),
                            backgroundColor: const Color(0x00000000),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)
                            ),
                            side: const BorderSide(width: 1, color: Colors.white)
                          ), 
                          child: const Text(
                            "Перейти к акции",
                            style: TextStyle(
                              fontFamily: "Raleway",
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 14
                            ),
                          )
                        )
                      ],
                    )
                  ],
                ),
              ),
            ) 
          ),
          (kIsWeb)?
          Center(
            child: Row(
              children: [
                IconButton(
                  onPressed: () => setState(() => currentIndex--), 
                  icon: const Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Colors.white,
                  ) 
                ),
                const Expanded(child: SizedBox.shrink()),
                IconButton(
                  onPressed: () => setState(() => currentIndex++), 
                  icon: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.white,
                  ) 
                ),
              ],
            ),
          ):
          const SizedBox.shrink()
        ],
      ),
    );
  }
}