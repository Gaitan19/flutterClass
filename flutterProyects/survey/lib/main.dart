import 'package:flutter/material.dart';
import 'package:survey/view/ready_to_fly/ready_to_fly_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Survey',
      debugShowCheckedModeBanner: false,
      home: const ReadyToFlyView(),
    );
  }
}
