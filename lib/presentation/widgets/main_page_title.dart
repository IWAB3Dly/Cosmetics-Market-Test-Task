import 'package:flutter/material.dart';

// Заголовок на главной странице

class MainPageTitle extends StatelessWidget {
  const MainPageTitle({
    super.key,
    required this.text,
    required this.startColor,
    required this.endColor,
  });

  final String text;

  final Color startColor;
  final Color endColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: const TextStyle(
              fontFamily: "Raleway",
              fontSize: 22,
              fontWeight: FontWeight.w600
            ),
          ),
          Container(
            width: 118,
            height: 4,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  startColor,
                  endColor,
                ],
              )
            ),
          )
        ],
      ),
    );
  }
}