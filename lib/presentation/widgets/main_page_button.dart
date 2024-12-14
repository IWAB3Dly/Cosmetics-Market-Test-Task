import 'package:flutter/material.dart';

// Это просто кнопка, использующаяся на главной странице

class MainPageButton extends StatelessWidget {
  const MainPageButton({
    super.key,
    required this.text
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9)
        ),
        side: BorderSide(
          width: 1,
          color: Colors.black.withOpacity(0.1)
        ),
        backgroundColor: Colors.white
      ),
      onPressed: (){}, 
      child: SizedBox(
        width: 125,
        height: 60,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontFamily: "Raleway",
              fontSize: 14,
              color: Color(0xFF080808)
            ),
          ),
        ),
      )
    );
  }
}