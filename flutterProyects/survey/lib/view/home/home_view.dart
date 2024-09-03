import 'package:flutter/material.dart';
import 'package:survey/common/color_extension.dart';
import 'package:survey/common_widget/feature_item.dart';
import 'package:survey/common_widget/outline_button.dart';
import 'package:survey/common_widget/top_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const TopBar(
        showAvatar: true,
        avatarImagePath: 'assets/img/_Avatar_.png',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            Text(
              'Hi Alex!',
              style: TextStyle(
                color: TColor.primary,
                fontSize: 28,
                fontWeight: FontWeight.bold,
                fontFamily: 'LemonMilkPro',
              ),
            ),
            const SizedBox(height: 24),
            const FeatureItem(
              imagePath: 'assets/img/icon-excuse-call-blue.png',
              title: 'Excuse Call',
              description: 'Press 1x',
              isActive: true,
            ),
            const FeatureItem(
              imagePath: 'assets/img/icon-device-birdie-blue.png',
              title: 'On-call Rep (24/7)',
              description: 'Press 2x',
              isActive: true,
            ),
            const FeatureItem(
              imagePath: 'assets/img/icon-location-sharing-blue.png',
              title: 'Location Sharing',
              description: 'Press and hold 3 sec',
              isActive: false,
            ),
            const Spacer(),
            Text(
              "How’s Your Experience So Far?",
              style: TextStyle(
                color: TColor.primary,
                fontSize: 17,
                fontWeight: FontWeight.w700,
                fontFamily: 'LemonMilkPro',
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "Please take a few minutes to complete\n this short survey. As a token of our appreciation, you’ll be entered into a\n draw to win a \$50 gift card!",
              style: TextStyle(
                color: TColor.textDark,
                fontSize: 14,
                fontFamily: 'LemonMilkPro',
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 24),
            OutlineButton(
              text: "Start The Survey",
              hasBackground: false,
              onPressed: () {},
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: TColor.primary),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.devices, color: TColor.primary),
            label: 'Device',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help, color: TColor.primary),
            label: 'Help',
          ),
        ],
      ),
    );
  }
}
