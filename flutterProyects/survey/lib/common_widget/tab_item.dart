import 'package:flutter/material.dart';
import 'package:survey/common/color_extension.dart';

class TabItem extends StatelessWidget {
  final String imagePath;
  final String label;
  final int index;
  final double imageWidth;
  final double imageHeight;
  final TabController? controller;

  const TabItem({
    Key? key,
    required this.imagePath,
    required this.label,
    required this.index,
    required this.imageWidth,
    required this.imageHeight,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: FittedBox(
        fit: BoxFit.contain,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: imageWidth,
              height: imageHeight,
              fit: BoxFit.contain,
              color:
                  controller?.index == index ? TColor.secondary : TColor.white,
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: const TextStyle(letterSpacing: 2.4), // Espaciado de letras
            ),
          ],
        ),
      ),
    );
  }
}
