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
                  children: [
                    const SizedBox(height: 20),
                    Image.asset(
                      'assets/img/birdie_logo.png',
                      height: 60,
                      color: TColor.primaryText,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "YOU'RE READY TO FLY!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 50),
                    const OutlineButton(
                      text: 'CONTINUE',
                      hasBackground: false,
                    ),
                  ],
                ),
                // Puedes agregar aquí cualquier otro elemento al final de la pantalla, como la ilustración de las olas si es necesario.
              ],
            ),
          ),
        ),
      ),
    );
  }
}
