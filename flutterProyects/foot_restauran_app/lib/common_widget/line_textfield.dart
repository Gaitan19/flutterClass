import 'package:flutter/material.dart';
import 'package:foot_restauran_app/common/color_extenstion.dart';

class LineTextField extends StatelessWidget {
  final TextEditingController controller;

  final String hitText;
  final TextInputType? keyboardType;

  final bool obscureText;

  const LineTextField(
      {super.key,
      required this.controller,
      required this.hitText,
      this.keyboardType,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        keyboardType: keyboardType,
        controller: controller,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        obscureText: obscureText,
        decoration: InputDecoration(
            hintText: hitText,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: TColor.gray),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: TColor.primary),
            )),
      ),
    );
  }
}
