import 'package:flutter/material.dart';

class FilterTile extends StatelessWidget {
  const FilterTile({
    super.key,
    required this.tileText,
    required this.chooseText
  });

  final String tileText;
  final String chooseText;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            tileText,
            style: const TextStyle(
              fontFamily: "Raleway",
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w600
            ),
          ),
          Text(
            chooseText,
            style: TextStyle(
              fontFamily: "Raleway",
              color: Colors.black.withOpacity(0.5),
              fontSize: 16,
              fontWeight: FontWeight.w500
            ),
          ),
        ],
      ),
    );
  }
}