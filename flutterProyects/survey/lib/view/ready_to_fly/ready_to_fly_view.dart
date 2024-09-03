import 'package:flutter/material.dart';
import 'package:survey/common/color_extension.dart';
import 'package:survey/common_widget/outline_button.dart';
import 'package:survey/view/home/home_view.dart';

class ReadyToFlyView extends StatelessWidget {
  const ReadyToFlyView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> waveImages = [
      'assets/img/wave_1.png',
      'assets/img/wave_2.png',
      'assets/img/wave_3.png',
      'assets/img/wave_4.png',
      'assets/img/wave_5.png',
    ];

    return Scaffold(
      backgroundColor: TColor.primary,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 76),
                        Image.asset(
                          'assets/img/birdie_logo.png',
                          height: 60,
                        ),
                        const SizedBox(height: 54),
                        SizedBox(
                          width: 300.19,
                          child: Text(
                            "you’re ready to fly!".toUpperCase(),
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: TColor.text,
                              fontSize: 56.4,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'LemonMilkPro',
                              height: 60.33 / 56.4,
                              letterSpacing: 0.015 * 56.4,
                            ),
                          ),
                        ),
                        const SizedBox(height: 50),
                        OutlineButton(
                          text: 'CONTINUE',
                          hasBackground: false,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomeView()));
                          },
                          borderColor: Colors.white,
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            fontFamily: 'LemonMilkPro',
                            height: 26 / 15,
                            letterSpacing: 5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: waveImages.map((image) {
                  return Image.asset(
                    image,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  );
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
