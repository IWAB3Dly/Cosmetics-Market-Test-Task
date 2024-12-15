import 'package:flutter/material.dart';

// тайл с главной страницы который самый первый, не знаю что ещё про него сказать

class CatalogTile extends StatelessWidget {
  const CatalogTile({
    super.key,
    required this.assetName,
    required this.catalogName
  });

  final String assetName;

  final String catalogName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      child: Column(
        children: [
          Container(
            height: 72,
            width: 72,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12)
            ),
            child: Image.asset(
              assetName,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            catalogName,
            style: const TextStyle(
              fontFamily: "Inter",
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 13
            ),
          ),
        ],
      ),
    );
  }
}