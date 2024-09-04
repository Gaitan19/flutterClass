import 'package:flutter/material.dart';
import 'package:survey/common/color_extension.dart';
import 'package:survey/common/common_data.dart';
import 'package:survey/common_widget/tab_item.dart';
import 'package:survey/view/device/device_view.dart';
import 'package:survey/view/help/help_view.dart';
import 'package:survey/view/home/home_view.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView>
    with TickerProviderStateMixin {
  TabController? controller;

  @override
  void initState() {
    controller = TabController(length: tabItems.length, vsync: this);
    controller?.addListener(() {
      if (mounted) {
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: controller,
        children: const [HomeView(), DeviceView(), HelpView()],
      ),
      bottomNavigationBar: BottomAppBar(
        color: TColor.primary,
        elevation: 0,
        child: TabBar(
          controller: controller,
          labelColor: TColor.secondary,
          labelPadding: EdgeInsets.zero,
          unselectedLabelColor: TColor.white,
          labelStyle: const TextStyle(
            fontSize: 8,
            fontWeight: FontWeight.w600,
            fontFamily: 'LemonMilkPro',
            letterSpacing: 2.4,
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 8,
            fontWeight: FontWeight.w600,
            fontFamily: 'LemonMilkPro',
            letterSpacing: 2.4,
          ),
          indicatorColor: Colors.transparent,
          indicatorSize: TabBarIndicatorSize.tab,
          padding: EdgeInsets.zero,
          tabs: tabItems.map((tabData) {
            return TabItem(
              imagePath: tabData.imagePath,
              label: tabData.label,
              index: tabData.index,
              imageWidth: tabData.imageWidth,
              imageHeight: tabData.imageHeight,
              controller: controller,
            );
          }).toList(),
        ),
      ),
    );
  }
}
