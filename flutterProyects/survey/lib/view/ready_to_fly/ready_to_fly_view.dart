import 'package:flutter/material.dart';
import 'package:survey/common/color_extenstion.dart';
import 'package:survey/common_widget/outline_button.dart';

class ReadyToFlyView extends StatelessWidget {
  const ReadyToFlyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColor.primary,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 76),
                    const SizedBox(height: 20),
                    Image.asset(
                      'assets/img/birdie_logo.png',
                      height: 60,
                      // color: TColor.primaryText,
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
                    const OutlineButton(
                      text: 'CONTINUE',
                      hasBackground: false,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
