import 'package:flutter/material.dart';
import 'package:survey/common/color_extension.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  final bool showAvatar;
  final VoidCallback? onBackPressed;
  final String? avatarImagePath;

  const TopBar({
    super.key,
    this.showAvatar = false,
    this.onBackPressed,
    this.avatarImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x1A000000),
            offset: Offset(0, 4),
            blurRadius: 4,
          ),
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (onBackPressed != null)
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: onBackPressed,
                )
              else
                Image.asset(
                  'assets/img/birdie_logo2.png',
                  height: 60,
                ),
              if (showAvatar && avatarImagePath != null)
                CircleAvatar(
                  backgroundImage: AssetImage(avatarImagePath!),
                  radius: 20,
                ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100.0);
}
