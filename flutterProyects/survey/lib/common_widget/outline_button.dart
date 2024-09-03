import 'package:flutter/material.dart';
import 'package:survey/common/color_extension.dart';

class OutlineButton extends StatelessWidget {
  final String text;
  final bool hasBackground;
  final VoidCallback onPressed;
  final TextStyle? textStyle;
  final Color? borderColor;

  const OutlineButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.hasBackground = true,
    this.textStyle,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
        side: BorderSide(color: borderColor ?? TColor.primaryText),
      ),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      color: hasBackground ? TColor.primaryText : Colors.transparent,
      minWidth: double.infinity,
      elevation: 0,
      highlightElevation: 0,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: textStyle ??
            TextStyle(
              color: hasBackground ? TColor.primary : TColor.primaryText,
              fontSize: 15,
              fontWeight: FontWeight.w300,
              fontFamily: 'LemonMilkPro',
              height: 26 / 15,
              letterSpacing: 5,
            ),
      ),
    );
  }
}
