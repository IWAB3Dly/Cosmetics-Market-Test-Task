import 'package:flutter/material.dart';

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
                  currentIndex =  value % imageAssets.length;
                }),
                controller: _imageController,
                itemBuilder: (context, index) { 
                  final actualIndex = index % imageAssets.length;
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
              padding: const EdgeInsets.only(left: 12),
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
                      color: currentIndex == index ? 
                       const Color(0xFFd9d9d9): 
                       const Color(0xFFd9d9d9).withOpacity(0.5) 
                       ,
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
                        Spacer(),
                        TextButton(
                          onPressed: () => print("Перешли"),
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 11),
                            backgroundColor: Color(0x00000000),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)
                            ),
                            side: BorderSide(width: 1, color: Colors.white)
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
          )
        ],
      ),
    );
  }
}