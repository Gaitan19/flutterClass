import 'package:flutter/material.dart';
import 'package:survey/common/color_extenstion.dart';

class OutlineButton extends StatelessWidget {
  final String text;
  final bool hasBackground;

  const OutlineButton({
    super.key,
    required this.text,
    this.hasBackground = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      decoration: BoxDecoration(
        color: hasBackground ? TColor.primaryText : Colors.transparent,
        border: Border.all(color: TColor.primaryText),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: hasBackground ? TColor.primary : TColor.primaryText,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
