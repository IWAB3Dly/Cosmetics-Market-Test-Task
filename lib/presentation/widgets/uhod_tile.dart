import 'package:flutter/material.dart';

// Это тайл с контурами косметики для окна с тестом в главной странице

class UhodTile extends StatelessWidget {
  const UhodTile({
    super.key,
    required this.assetName,
    required this.catalogName
  });

  final String assetName;

  final String catalogName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Column(
        children: [
          Container(
            height: 90,
            width: 90,
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
              fontFamily: "Raleway",
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