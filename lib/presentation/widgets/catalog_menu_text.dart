import 'package:flutter/material.dart';

// Виджет для текста с обработкой нажатий из каталога

class CatalogMenuText extends StatelessWidget {
  const CatalogMenuText({
    super.key,
    required this.text,
    required this.onTap
  });

  final String text;

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: onTap,
          child: Text(
            text,
            style: const TextStyle(
              fontFamily: "Raleway",
              fontSize: 20,
              fontWeight: FontWeight.w600
            ),
          ),
        ),
      ),
    );
  }
}