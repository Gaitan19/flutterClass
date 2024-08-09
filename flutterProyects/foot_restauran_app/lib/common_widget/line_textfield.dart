import 'package:flutter/material.dart';

class LineTextfield extends StatelessWidget {
  const LineTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(controller),
    );
  }
}
