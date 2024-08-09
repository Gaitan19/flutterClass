import 'package:flutter/material.dart';
import 'package:foot_restauran_app/common/color_extenstion.dart';
import 'package:foot_restauran_app/view/on_boarding/on_boarding_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: TColor.primary,
        fontFamily: "Quicksand",
      ),
      home: const OnBoardingView(),
    );
  }
}
