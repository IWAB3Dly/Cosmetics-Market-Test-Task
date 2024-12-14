import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({
    super.key,
    required this.name,
    required this.type,
    required this.cost,
    required this.assetPath,
    this.isForSale = false,
    this.isTwoForOne = false,
    this.newCost
  });

  final String name;
  final String type;
  final String cost;
  final String assetPath;
  final String? newCost;

  final bool isForSale;
  final bool isTwoForOne;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 190,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  height: 185,
                  width: 190,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xFFf4f4f4),
                  ),
                  child: Image.asset(
                    assetPath,
                    fit: BoxFit.contain,
                  ),
                ),
                Positioned(
                  top: 16,
                  right: 16,
                  child: isForSale? 
                  Image.asset(
                    "assets/images/percent_icon.png",
                    color: Colors.black,
                    width: 25,
                    height: 25,
                  ):
                  const SizedBox.shrink()
                ),
                Positioned(
                  top: 48,
                  right: 16,
                  child: isTwoForOne? 
                  Image.asset(
                    "assets/images/two_for_one_icon.png",
                    width: 25,
                    height: 25,
                  ):
                  const SizedBox.shrink()
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              type,
              style: const TextStyle(
                fontFamily: "Inter",
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 12
              ),
            ),
            Text(
              name,
              style: const TextStyle(
                fontFamily: "Inter",
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 18
              ),
            ),
            isForSale? 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "$cost ₽",
                  style: const TextStyle(
                    fontFamily: "Montserrat",
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 18.5
                  ),
                ),
                Text(
                  "$newCost ₽",
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    color: Colors.black.withOpacity(0.2),
                    fontWeight: FontWeight.w600,
                    fontSize: 18.5,
                    decoration: TextDecoration.lineThrough, 
                    decorationThickness: 2.0, 
                    decorationColor: Colors.black.withOpacity(0.2)
                  ),
                ),
              ],
            )
            :
            Text(
              "$cost ₽",
              style: const TextStyle(
                fontFamily: "Montserrat",
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 18.5
              ),
            ),
          ],
        ),
      ),
    );
  }
}