import 'package:flutter/material.dart';
import 'package:survey/common/color_extension.dart';

class FeatureItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final bool isActive;

  const FeatureItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xFF2A4ACC),
            width: 1.0,
          ),
        ),
      ),
      margin: const EdgeInsets.only(bottom: 17),
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            width: 30,
            height: 44,
            color: isActive ? null : Colors.grey,
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: isActive ? TColor.primary : Colors.grey,
                  fontSize: 14,
                  fontFamily: 'LemonMilkPro',
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                description,
                style: TextStyle(
                  color: isActive ? TColor.primary : Colors.grey,
                  fontSize: 14,
                  fontFamily: 'LemonMilkPro',
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
