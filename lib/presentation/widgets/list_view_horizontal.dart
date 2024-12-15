import 'package:flutter/material.dart';

// ListView для главной страницы с горизонтальным прокручиванием

class ListViewHorizontal extends StatelessWidget {
  const ListViewHorizontal({
    super.key,
    required this.scrollController,
    required this.productTileList
  });

  final ScrollController scrollController;
  final List<Widget> productTileList;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.allScroll,
      child: GestureDetector(
        onHorizontalDragUpdate: (details) {
          scrollController.jumpTo(
            (scrollController.offset - details.delta.dx).
            clamp(-50, scrollController.position.maxScrollExtent+50),
          );
        },
        child: ListView.builder(
          controller: scrollController,
          scrollDirection: Axis.horizontal,
          itemCount: productTileList.length*4,
          itemBuilder:(context, index) {
            return productTileList[index % productTileList.length];
          }, 
        ),
      ),
    );
  }
}